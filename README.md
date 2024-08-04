
# Sonic 1 Github Disassembly with Mega PCM 2

This is an example Sonic 1 disassembly with Mega PCM 2 DAC driver pre-installed.

Mega PCM 2 is an advanced DAC driver that allows for high-quality sample playback on real hardware: https://github.com/vladikcomper/MegaPCM

You can see Mega PCM 2 in action on this recording from real hardware: https://www.youtube.com/watch?v=4RZbvuL2m1c

You can find the original disassembly here: https://github.com/sonicretro/s1disasm

## Installation details

Installation strictly follows the following guides:
1. Mega PCM 2 installation in S1 Github AS disassembly: https://github.com/vladikcomper/MegaPCM/blob/2.x/docs/1-installation/Sonic-1-Github-AS.md
2. Advanced Mega PCM 2 integration for S1 Github AS disassembly: https://github.com/vladikcomper/MegaPCM/blob/2.x/docs/2-advanced-integration/Sonic-1-Github-AS.md

You can follow each step of these guides in the commit history.

Additionally, MD Debugger was installed for better development experience: https://github.com/vladikcomper/md-modules/tree/master/modules/errorhandler

## Alternative implementations

1. Note that there's a _slightly more_ optimized reference implementetion of SMPS + Mega PCM 2 available here: https://github.com/vladikcomper/MegaPCM/tree/2.x/examples/s1-smps-integration

   This implementation strictly follows the guide and doesn't attempt additional optimizations.

2. Unofficial port to Sonic 2 Clone Driver v.2 by TheBlad768 can be found in Sonic Clean Engine (S.C.E.) repository: https://github.com/TheBlad768/Sonic-Clean-Engine-S.C.E.-

