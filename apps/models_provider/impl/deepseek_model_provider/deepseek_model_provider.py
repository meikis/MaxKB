#!/usr/bin/env python
# -*- coding: UTF-8 -*-
"""
@Project ：MaxKB 
@File    ：deepseek_model_provider.py
@Author  ：Brian Yang
@Date    ：5/12/24 7:40 AM 
"""
import os

from common.utils.common import get_file_content
from models_provider.base_model_provider import IModelProvider, ModelProvideInfo, ModelInfo, ModelTypeConst, \
    ModelInfoManage
from models_provider.impl.deepseek_model_provider.credential.llm import DeepSeekLLMModelCredential
from models_provider.impl.deepseek_model_provider.model.llm import DeepSeekChatModel
from maxkb.conf import PROJECT_DIR
from django.utils.translation import gettext as _

deepseek_llm_model_credential = DeepSeekLLMModelCredential()
deepseek_reasoner = ModelInfo('deepseek-reasoner', '', ModelTypeConst.LLM,
                              deepseek_llm_model_credential, DeepSeekChatModel
                              )

deepseek_chat = ModelInfo('deepseek-chat', _('Good at common conversational tasks, supports 32K contexts'),
                          ModelTypeConst.LLM,
                          deepseek_llm_model_credential, DeepSeekChatModel
                          )

deepseek_coder = ModelInfo('deepseek-coder', _('Good at handling programming tasks, supports 16K contexts'),
                           ModelTypeConst.LLM,
                           deepseek_llm_model_credential,
                           DeepSeekChatModel)

model_info_manage = ModelInfoManage.builder().append_model_info(deepseek_reasoner).append_model_info(deepseek_chat).append_model_info(
    deepseek_coder).append_default_model_info(
    deepseek_coder).build()


class DeepSeekModelProvider(IModelProvider):

    def get_model_info_manage(self):
        return model_info_manage

    def get_model_provide_info(self):
        return ModelProvideInfo(provider='model_deepseek_provider', name='DeepSeek', icon=get_file_content(
            os.path.join(PROJECT_DIR, "apps", 'models_provider', 'impl', 'deepseek_model_provider', 'icon',
                         'deepseek_icon_svg')))
