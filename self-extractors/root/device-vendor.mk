# Copyright (c) 2017 NXP Software. All rights are reserved.
# Copyright 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_STEM := bullhead/device-partial.mk

$(call inherit-product-if-exists, vendor/lge/$(LOCAL_STEM))
$(call inherit-product-if-exists, vendor/qcom/$(LOCAL_STEM))

# Switch to enable or disable NXP Software LVVEFA processing
ENABLE_LVVEFA := true
ifeq ($(ENABLE_LVVEFA), true)
$(call inherit-product-if-exists, vendor/lifevibes/device-vendor-lvve.mk)
endif # ENABLE_LVVEFA
