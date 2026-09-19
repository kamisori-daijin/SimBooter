TARGET := iphone:clang:latest:14.0
ARCHS = arm64
GO_EASY_ON_ME := 1
THEOS_ROOTLESS_SCHEME = rootless
# TODO: replace iOSSimData?

THEOS_SUBPROJECT_CFLAGS += -Wno-error -Wno-unused-variable -Wno-incompatible-pointer-types -Wno-incomplete-implementation
ADDITIONAL_CFLAGS += -Wno-error -Wno-unused-variable -Wno-incompatible-pointer-types -Wno-incomplete-implementation



include $(THEOS)/makefiles/common.mk

# iOS subprojects
SUBPROJECTS += launchd_sim_trampoline_hook

# iOS simulator subprojects
SUBPROJECTS += launchd_sim_hook

SUBPROJECTS += FakeMobileCoreServices
SUBPROJECTS += SimFramebuffer
SUBPROJECTS += SimRenderServer
SUBPROJECTS += SimBooter
SUBPROJECTS += simxpctest
include $(THEOS_MAKE_PATH)/aggregate.mk
