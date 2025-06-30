#
# Copyright (C) 2023 Salvo Giangreco
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# Debloat list for Galaxy A73 5G (a73xq)
# - Add entries inside the specific partition containing that file (<PARTITION>_DEBLOAT+="")
# - DO NOT add the partition name at the start of any entry (eg. "/system/dpolicy_system")
# - DO NOT add a slash at the start of any entry (eg. "/dpolicy_system")

# Qualcomm IPA firmware blobs
VENDOR_DEBLOAT+="
firmware/ipa_fws.b00
firmware/ipa_fws.b01
firmware/ipa_fws.b02
firmware/ipa_fws.b03
firmware/ipa_fws.b04
firmware/ipa_fws.elf
firmware/ipa_fws.mdt
firmware/yupik_ipa_fws.b00
firmware/yupik_ipa_fws.b01
firmware/yupik_ipa_fws.b02
firmware/yupik_ipa_fws.b03
firmware/yupik_ipa_fws.b04
firmware/yupik_ipa_fws.elf
firmware/yupik_ipa_fws.mdt
"
