/// @addtogroup feat Feat
/// @brief Define feat bonuses/penalties
/// @{
/// @file nwnx_feat.nss
#include "nwnx"

const string NWNX_Feat = "NWNX_Feat"; ///< @private

/// @name Feat Modifiers
/// @anchor feat_modifiers
///
/// @{
const int NWNX_FEAT_MODIFIER_INVALID        = 0;
const int NWNX_FEAT_MODIFIER_AB             = 1;
const int NWNX_FEAT_MODIFIER_ABILITY        = 2;
const int NWNX_FEAT_MODIFIER_ABVSRACE       = 3;
const int NWNX_FEAT_MODIFIER_AC             = 4;
const int NWNX_FEAT_MODIFIER_ACVSRACE       = 5;
const int NWNX_FEAT_MODIFIER_CONCEALMENT    = 6;
const int NWNX_FEAT_MODIFIER_DMGIMMUNITY    = 7;
const int NWNX_FEAT_MODIFIER_DMGREDUCTION   = 8;
const int NWNX_FEAT_MODIFIER_DMGRESIST      = 9;
const int NWNX_FEAT_MODIFIER_IMMUNITY       = 10;
const int NWNX_FEAT_MODIFIER_MOVEMENTSPEED  = 11;
const int NWNX_FEAT_MODIFIER_REGENERATION   = 12;
const int NWNX_FEAT_MODIFIER_SAVE           = 13;
const int NWNX_FEAT_MODIFIER_SAVEVSRACE     = 14;
const int NWNX_FEAT_MODIFIER_SAVEVSTYPE     = 15;
const int NWNX_FEAT_MODIFIER_SAVEVSTYPERACE = 16;
const int NWNX_FEAT_MODIFIER_SPELLIMMUNITY  = 17;
const int NWNX_FEAT_MODIFIER_SRCHARGEN      = 18;
const int NWNX_FEAT_MODIFIER_SRINCLEVEL     = 19;
///@}

/// @brief Sets a feat modifier.
/// @param iFeat The Feat constant or value in feat.2da.
/// @param iMod The @ref feat_modifiers "feat modifier" to set.
/// @param iParam1, iParam2, iParam3 The parameters for this racial modifier.
void NWNX_Feat_SetFeatModifier(int iFeat, int iMod, int iParam1, int iParam2 = 0xDEADBEEF, int iParam3 = 0xDEADBEEF, int iParam4 = 0xDEADBEEF);

/// @brief Refreshes feat bonuses for a creature
/// @param oCreature The creature to refresh.
/// @note Only needs to be used OnEquip/OnUnequip or after Adding Removing feats through NWNX
void NWNX_Feat_CreatureRefreshFeats(object oCreature);

/// @}

void NWNX_Feat_SetFeatModifier(int iFeat, int iMod, int iParam1, int iParam2 = 0xDEADBEEF, int iParam3 = 0xDEADBEEF, int iParam4 = 0xDEADBEEF)
{
    string sFunc = "SetFeatModifier";

    NWNX_PushArgumentInt(NWNX_Feat, sFunc, iParam4);
    NWNX_PushArgumentInt(NWNX_Feat, sFunc, iParam3);
    NWNX_PushArgumentInt(NWNX_Feat, sFunc, iParam2);
    NWNX_PushArgumentInt(NWNX_Feat, sFunc, iParam1);
    NWNX_PushArgumentInt(NWNX_Feat, sFunc, iMod);
    NWNX_PushArgumentInt(NWNX_Feat, sFunc, iFeat);

    NWNX_CallFunction(NWNX_Feat, sFunc);
}

void NWNX_Feat_CreatureRefreshFeats(object oCreature)
{
    string sFunc = "CreatureRefreshFeats";

    NWNX_PushArgumentObject(NWNX_Feat, sFunc, oCreature);

    NWNX_CallFunction(NWNX_Feat, sFunc);

}