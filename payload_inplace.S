/*
 * payload_inplace.S -- PS3 Jailbreak payload : payload for in-memory LV2 patching
 *
 * Copyright (C) Youness Alaoui (KaKaRoTo)
 * Copyright (C) Aaron Lindsay (Aaron')
 * Copyright (C) (subdub)
 * Copyright (C) kmeaw
 *
 * This software is distributed under the terms of the GNU General Public
 * License ("GPL") version 3, as published by the Free Software Foundation.
 *
 * This payload is a modified version of the original PSJailbreak's payload.
 * The people behing PSJailbrak are the original authors and copyright holders
 * of the code they wrote.
 */

#define __PL3_INPLACE_LV2_PATCH__
#define FIRMWARE_3_55
#include "pl3.h.S"

.org 0
RESIDENT_AREA_START()
#include "map_open_path.h.S"
#include "open_hook.h.S"
.org 0x5ac
.long 0x4bfffc9c
.long 0xf821ff81
