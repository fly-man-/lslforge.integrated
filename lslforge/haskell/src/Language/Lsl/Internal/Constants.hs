{-# OPTIONS_GHC -XNoMonomorphismRestriction #-}
module Language.Lsl.Internal.Constants where

import Data.Bits((.|.),shiftL)
import Language.Lsl.Internal.Key(LSLKey(..))
import Language.Lsl.Internal.Type(LSLValue(..),typeOfLSLValue)
import Language.Lsl.Internal.Util(findM)

data Constant a = Constant { constName :: String, constVal :: LSLValue a }
    deriving (Show)

cInventoryAll = (-1);llcInventoryAll :: RealFloat a => LSLValue a;llcInventoryAll = IVal cInventoryAll
cInventoryAnimation = 20;llcInventoryAnimation :: RealFloat a => LSLValue a; llcInventoryAnimation = IVal cInventoryAnimation
cInventoryBodyPart = 13;llcInventoryBodyPart :: RealFloat a => LSLValue a; llcInventoryBodyPart = IVal cInventoryBodyPart
cInventoryClothing = 5;llcInventoryClothing :: RealFloat a => LSLValue a; llcInventoryClothing = IVal cInventoryClothing
cInventoryGesture = 21;llcInventoryGesture :: RealFloat a => LSLValue a; llcInventoryGesture = IVal cInventoryGesture
cInventoryLandmark = 3;llcInventoryLandmark :: RealFloat a => LSLValue a; llcInventoryLandmark = IVal cInventoryLandmark
cInventoryNotecard = 7;llcInventoryNotecard :: RealFloat a => LSLValue a; llcInventoryNotecard = IVal cInventoryNotecard
cInventoryNone = (-1);llcInventoryNone :: RealFloat a => LSLValue a;llcInventoryNone = IVal cInventoryNone
cInventoryObject = 6;llcInventoryObject :: RealFloat a => LSLValue a; llcInventoryObject = IVal cInventoryObject
cInventoryScript = 10;llcInventoryScript :: RealFloat a => LSLValue a; llcInventoryScript = IVal cInventoryScript
cInventorySound = 1;llcInventorySound :: RealFloat a => LSLValue a; llcInventorySound = IVal cInventorySound
cInventoryTexture = 0;llcInventoryTexture :: RealFloat a => LSLValue a; llcInventoryTexture = IVal cInventoryTexture
cPermissionChangeLinks = 0x80 :: Int
llcPermissionChangeLinks = IVal cPermissionChangeLinks

cChangedLink = 0x20 :: Int
llcChangedLink = IVal cChangedLink
cChangedInventory = 0x1;llcChangedInventory :: RealFloat a => LSLValue a; llcChangedInventory = IVal cChangedInventory
cChangedAllowedDrop = 0x40;llcChangedAllowedDrop :: RealFloat a => LSLValue a; llcChangedAllowedDrop = IVal cChangedAllowedDrop

cChangedRegionStart = 0x400 :: Int
llcChangedRegionStart = IVal cChangedRegionStart

cMaskBase = 0;llcMaskBase :: RealFloat a => LSLValue a; llcMaskBase = IVal cMaskBase
cMaskOwner = 1;llcMaskOwner :: RealFloat a => LSLValue a; llcMaskOwner = IVal cMaskOwner
cMaskGroup = 2;llcMaskGroup :: RealFloat a => LSLValue a; llcMaskGroup = IVal cMaskGroup
cMaskEveryone = 3;llcMaskEveryone :: RealFloat a => LSLValue a; llcMaskEveryone = IVal cMaskEveryone
cMaskNext = 4;llcMaskNext :: RealFloat a => LSLValue a; llcMaskNext = IVal cMaskNext

cPermModify = 0x00004000;llcPermModify :: RealFloat a => LSLValue a; llcPermModify = IVal cPermModify
cPermCopy = 0x00008000;llcPermCopy :: RealFloat a => LSLValue a; llcPermCopy = IVal cPermCopy
cPermTransfer = 0x00002000;llcPermTransfer :: RealFloat a => LSLValue a; llcPermTransfer = IVal cPermTransfer
cPermMove = 0x00080000;llcPermMove :: RealFloat a => LSLValue a; llcPermMove = IVal cPermMove
cFullPerm = cPermModify .|. cPermMove .|. cPermTransfer .|. cPermCopy

cPrimTypeBox = 0;llcPrimTypeBox :: RealFloat a => LSLValue a; llcPrimTypeBox = IVal cPrimTypeBox
cPrimTypeCylinder = 1;llcPrimTypeCylinder :: RealFloat a => LSLValue a; llcPrimTypeCylinder = IVal cPrimTypeCylinder
cPrimTypePrism = 2;llcPrimTypePrism :: RealFloat a => LSLValue a; llcPrimTypePrism = IVal cPrimTypePrism
cPrimTypeRing = 6;llcPrimTypeRing :: RealFloat a => LSLValue a; llcPrimTypeRing = IVal cPrimTypeRing
cPrimTypeSphere = 3;llcPrimTypeSphere :: RealFloat a => LSLValue a; llcPrimTypeSphere = IVal cPrimTypeSphere
cPrimTypeSculpt = 7;llcPrimTypeSculpt :: RealFloat a => LSLValue a; llcPrimTypeSculpt = IVal cPrimTypeSculpt
cPrimTypeTorus = 4;llcPrimTypeTorus :: RealFloat a => LSLValue a; llcPrimTypeTorus = IVal cPrimTypeTorus
cPrimTypeTube = 5;llcPrimTypeTube :: RealFloat a => LSLValue a; llcPrimTypeTube = IVal cPrimTypeTube

validAttachmentPoints = [0..36]::[Int]

cDebugChannel = 2147483647 :: Int
llcDebugChannel = IVal cDebugChannel

cEOF = "\n\n\n"
llcEOF = (SVal cEOF)

cPermissionControlCamera = 0x800 :: Int
llcPermissionControlCamera = IVal cPermissionControlCamera
cPermissionTrackCamera = 0x400;llcPermissionTrackCamera :: RealFloat a => LSLValue a; llcPermissionTrackCamera = IVal cPermissionTrackCamera
cPermissionTriggerAnimation = 0x10;llcPermissionTriggerAnimation :: RealFloat a => LSLValue a; llcPermissionTriggerAnimation = IVal cPermissionTriggerAnimation
cPermissionDebit = 0x2;llcPermissionDebit :: RealFloat a => LSLValue a; llcPermissionDebit = IVal cPermissionDebit
cPermissionAttach = 0x20;llcPermissionAttach :: RealFloat a => LSLValue a; llcPermissionAttach = IVal cPermissionAttach
cPermissionTakeControls = 0x4;llcPermissionTakeControls :: RealFloat a => LSLValue a; llcPermissionTakeControls = IVal cPermissionTakeControls

cActive = 0x2;llcActive :: RealFloat a => LSLValue a; llcActive = IVal cActive
cAgent = 0x1;llcAgent :: RealFloat a => LSLValue a; llcAgent = IVal cAgent
cPassive = 0x4;llcPassive :: RealFloat a => LSLValue a; llcPassive = IVal cPassive
cScripted = 0x8;llcScripted :: RealFloat a => LSLValue a; llcScripted = IVal cScripted


cStatusPhysics = 1;llcStatusPhysics :: RealFloat a => LSLValue a; llcStatusPhysics = IVal cStatusPhysics
cStatusRotateX = 2;llcStatusRotateX :: RealFloat a => LSLValue a; llcStatusRotateX = IVal cStatusRotateX
cStatusRotateY = 4;llcStatusRotateY :: RealFloat a => LSLValue a; llcStatusRotateY = IVal cStatusRotateY
cStatusRotateZ = 8;llcStatusRotateZ :: RealFloat a => LSLValue a; llcStatusRotateZ = IVal cStatusRotateZ
cStatusPhantom = 16;llcStatusPhantom :: RealFloat a => LSLValue a; llcStatusPhantom = IVal cStatusPhantom
cStatusSandbox = 32;llcStatusSandbox :: RealFloat a => LSLValue a; llcStatusSandbox = IVal cStatusSandbox
cStatusBlockGrab = 64;llcStatusBlockGrab :: RealFloat a => LSLValue a; llcStatusBlockGrab = IVal cStatusBlockGrab
cStatusDieAtEdge = 128;llcStatusDieAtEdge :: RealFloat a => LSLValue a; llcStatusDieAtEdge = IVal cStatusDieAtEdge
cStatusReturnAtEdge = 256;llcStatusReturnAtEdge :: RealFloat a => LSLValue a; llcStatusReturnAtEdge = IVal cStatusReturnAtEdge
cStatusCastShadows = 512;llcStatusCastShadows :: RealFloat a => LSLValue a; llcStatusCastShadows = IVal cStatusCastShadows

cPrimBumpShiny = 19;llcPrimBumpShiny :: RealFloat a => LSLValue a; llcPrimBumpShiny = IVal cPrimBumpShiny
cPrimColor = 18;llcPrimColor :: RealFloat a => LSLValue a; llcPrimColor = IVal cPrimColor
cPrimTexture = 17;llcPrimTexture :: RealFloat a => LSLValue a; llcPrimTexture = IVal cPrimTexture
cPrimTexgen = 22;llcPrimTexgen :: RealFloat a => LSLValue a; llcPrimTexgen = IVal cPrimTexgen
cPrimFullbright = 20;llcPrimFullbright :: RealFloat a => LSLValue a; llcPrimFullbright = IVal cPrimFullbright

cPrimMaterial = 2;llcPrimMaterial :: RealFloat a => LSLValue a; llcPrimMaterial = IVal cPrimMaterial
cPrimPhantom = 5;llcPrimPhantom :: RealFloat a => LSLValue a; llcPrimPhantom = IVal cPrimPhantom
cPrimPhysics = 3;llcPrimPhysics :: RealFloat a => LSLValue a; llcPrimPhysics = IVal cPrimPhysics
cPrimFlexible = 21;llcPrimFlexible :: RealFloat a => LSLValue a; llcPrimFlexible = IVal cPrimFlexible
cPrimPointLight = 23;llcPrimPointLight :: RealFloat a => LSLValue a; llcPrimPointLight = IVal cPrimPointLight
cPrimPosition = 6;llcPrimPosition :: RealFloat a => LSLValue a; llcPrimPosition = IVal cPrimPosition
cPrimRotation = 8;llcPrimRotation :: RealFloat a => LSLValue a; llcPrimRotation = IVal cPrimRotation
cPrimSize = 7;llcPrimSize :: RealFloat a => LSLValue a; llcPrimSize = IVal cPrimSize
cPrimTempOnRez = 4;llcPrimTempOnRez :: RealFloat a => LSLValue a; llcPrimTempOnRez = IVal cPrimTempOnRez 
cPrimType = 9;llcPrimType :: RealFloat a => LSLValue a; llcPrimType = IVal cPrimType

cParcelDetailsName = 0;llcParcelDetailsName :: RealFloat a => LSLValue a; llcParcelDetailsName = IVal cParcelDetailsName
cParcelDetailsDesc = 1;llcParcelDetailsDesc :: RealFloat a => LSLValue a; llcParcelDetailsDesc = IVal cParcelDetailsDesc
cParcelDetailsOwner = 2;llcParcelDetailsOwner :: RealFloat a => LSLValue a; llcParcelDetailsOwner = IVal cParcelDetailsOwner
cParcelDetailsGroup = 3;llcParcelDetailsGroup :: RealFloat a => LSLValue a; llcParcelDetailsGroup = IVal cParcelDetailsGroup 
cParcelDetailsArea = 4;llcParcelDetailsArea :: RealFloat a => LSLValue a; llcParcelDetailsArea = IVal cParcelDetailsArea

cClickActionNone = 0;llcClickActionNone :: RealFloat a => LSLValue a; llcClickActionNone = IVal cClickActionNone
cClickActionTouch = 0;llcClickActionTouch :: RealFloat a => LSLValue a; llcClickActionTouch = IVal cClickActionTouch
cClickActionSit = 1;llcClickActionSit :: RealFloat a => LSLValue a; llcClickActionSit = IVal cClickActionSit
cClickActionBuy = 2;llcClickActionBuy :: RealFloat a => LSLValue a; llcClickActionBuy = IVal cClickActionBuy
cClickActionPay = 3;llcClickActionPay :: RealFloat a => LSLValue a; llcClickActionPay = IVal cClickActionPay
cClickActionOpen = 4;llcClickActionOpen :: RealFloat a => LSLValue a; llcClickActionOpen = IVal cClickActionOpen
cClickActionPlay = 5;llcClickActionPlay :: RealFloat a => LSLValue a; llcClickActionPlay = IVal cClickActionPlay
cClickActionOpenMedia = 6;llcClickActionOpenMedia :: RealFloat a => LSLValue a; llcClickActionOpenMedia = IVal cClickActionOpenMedia
cClickActions = [cClickActionTouch,cClickActionSit,cClickActionBuy,cClickActionPay,cClickActionOpen,cClickActionPlay,cClickActionOpenMedia]

cDataBorn = 3;llcDataBorn :: RealFloat a => LSLValue a; llcDataBorn = IVal cDataBorn
cDataName = 2;llcDataName :: RealFloat a => LSLValue a; llcDataName = IVal cDataName
cDataOnline = 1;llcDataOnline :: RealFloat a => LSLValue a; llcDataOnline = IVal cDataOnline
cDataPayinfo = 8;llcDataPayinfo :: RealFloat a => LSLValue a; llcDataPayinfo = IVal cDataPayinfo
cDataRating = 4;llcDataRating :: RealFloat a => LSLValue a; llcDataRating = IVal cDataRating
cDataSimPos = 5;llcDataSimPos :: RealFloat a => LSLValue a; llcDataSimPos = IVal cDataSimPos
cDataSimRating = 7;llcDataSimRating :: RealFloat a => LSLValue a; llcDataSimRating = IVal cDataSimRating
cDataSimStatus = 6;llcDataSimStatus :: RealFloat a => LSLValue a; llcDataSimStatus = IVal cDataSimStatus

cHTTPBodyMaxlength = 2;llcHTTPBodyMaxlength :: RealFloat a => LSLValue a; llcHTTPBodyMaxlength = IVal cHTTPBodyMaxlength
cHTTPBodyTruncated = 0;llcHTTPBodyTruncated :: RealFloat a => LSLValue a; llcHTTPBodyTruncated = IVal cHTTPBodyTruncated
cHTTPMethod = 0;llcHTTPMethod :: RealFloat a => LSLValue a; llcHTTPMethod = IVal cHTTPMethod
cHTTPMimetype = 1;llcHTTPMimetype :: RealFloat a => LSLValue a; llcHTTPMimetype = IVal cHTTPMimetype
cHTTPVerifyCert = 3;llcHTTPVerifyCert :: RealFloat a => LSLValue a; llcHTTPVerifyCert = IVal cHTTPVerifyCert

cRemoteDataChannel = 1;llcRemoteDataChannel :: RealFloat a => LSLValue a; llcRemoteDataChannel = IVal cRemoteDataChannel
cRemoteDataRequest = 2;llcRemoteDataRequest :: RealFloat a => LSLValue a; llcRemoteDataRequest = IVal cRemoteDataRequest
cRemoteDataReply = 3;llcRemoteDataReply :: RealFloat a => LSLValue a; llcRemoteDataReply = IVal cRemoteDataReply

llcZeroVector = VVal 0 0 0
llcZeroRotation = RVal 0 0 0 1

mkIConst :: RealFloat a => Int -> (Int,LSLValue a)
mkIConst i = (i,IVal i)

cPrimHoleDefault = 0 :: Int
cPrimHoleSquare = 32 :: Int
cPrimHoleCircle = 16 :: Int
cPrimHoleTriangle = 48 :: Int
validPrimHoleType = flip elem $ map IVal [cPrimHoleDefault,cPrimHoleSquare,
    cPrimHoleCircle,cPrimHoleTriangle]

llcUrlRequestGranted = SVal "URL_REQUEST_GRANTED"
llcUrlRequestDenied = SVal "URL_REQUEST_DENIED"

allConstants :: RealFloat a => [Constant a]
allConstants = [
    Constant "ACTIVE" llcActive,
    Constant "AGENT" llcAgent,
    Constant "AGENT_ALWAYS_RUN" (IVal 0x1000),
    Constant "AGENT_ATTACHMENTS" (IVal 0x2),
    Constant "AGENT_AUTOPILOT" (IVal 0x2000),
    Constant "AGENT_AWAY" (IVal 0x40),
    Constant "AGENT_BUSY" (IVal 0x800),
    Constant "AGENT_BY_LEGACY_NAME" llcAgent,
    Constant "AGENT_BY_USERNAME" (IVal 0x10),
    Constant "AGENT_CROUCHING" (IVal 0x400),
    Constant "AGENT_FLYING" (IVal 0x1),
    Constant "AGENT_IN_AIR" (IVal 0x100),
    Constant "AGENT_LIST_PARCEL" (IVal 0x1),
    Constant "AGENT_LIST_PARCEL_OWNER" (IVal 0x2),
    Constant "AGENT_LIST_REGION" (IVal 0x4),
    Constant "AGENT_MOUSELOOK" (IVal 0x8),
    Constant "AGENT_ON_OBJECT" (IVal 0x20),
    Constant "AGENT_SCRIPTED" (IVal 0x4),
    Constant "AGENT_SITTING" (IVal 0x10),
    Constant "AGENT_TYPING" (IVal 0x200),
    Constant "AGENT_WALKING" (IVal 0x80),
    Constant "ALL_SIDES" (IVal (-1)),
    Constant "ANIM_ON" (IVal 0x1),
    Constant "ATTACH_BACK" (IVal 9),
    Constant "ATTACH_BELLY" (IVal 28),
    Constant "ATTACH_CHEST" (IVal 1),
    Constant "ATTACH_CHIN" (IVal 12),
    Constant "ATTACH_HEAD" (IVal 2),
    Constant "ATTACH_HUD_BOTTOM" (IVal 37),
    Constant "ATTACH_HUD_BOTTOM_LEFT" (IVal 36),
    Constant "ATTACH_HUD_BOTTOM_RIGHT" (IVal 38),
    Constant "ATTACH_HUD_CENTER_1" (IVal 35),
    Constant "ATTACH_HUD_CENTER_2" (IVal 31),
    Constant "ATTACH_HUD_TOP_CENTER" (IVal 33),
    Constant "ATTACH_HUD_TOP_LEFT" (IVal 34),
    Constant "ATTACH_HUD_TOP_RIGHT" (IVal 32),
    Constant "ATTACH_LEAR" (IVal 13),
    Constant "ATTACH_LEFT_PEC" (IVal 29),
    Constant "ATTACH_LEYE" (IVal 15),
    Constant "ATTACH_LFOOT" (IVal 7),
    Constant "ATTACH_LHAND" (IVal 5),
    Constant "ATTACH_LHIP" (IVal 25),
    Constant "ATTACH_LLARM" (IVal 21),
    Constant "ATTACH_LLLEG" (IVal 27),
    Constant "ATTACH_LPEC" (IVal 30),
    Constant "ATTACH_LSHOULDER" (IVal 3),
    Constant "ATTACH_LUARM" (IVal 20),
    Constant "ATTACH_LULEG" (IVal 26),
    Constant "ATTACH_MOUTH" (IVal 11),
    Constant "ATTACH_NOSE" (IVal 17),
    Constant "ATTACH_PELVIS" (IVal 10),
    Constant "ATTACH_REAR" (IVal 14),
    Constant "ATTACH_REYE" (IVal 16),
    Constant "ATTACH_RFOOT" (IVal 8),
    Constant "ATTACH_RHAND" (IVal 6),
    Constant "ATTACH_RHIP" (IVal 22),
    Constant "ATTACH_RIGHT_PEC" (IVal 30),
    Constant "ATTACH_RLARM" (IVal 19),
    Constant "ATTACH_RLLEG" (IVal 24),
    Constant "ATTACH_RPEC" (IVal 29),
    Constant "ATTACH_RSHOULDER" (IVal 4),
    Constant "ATTACH_RUARM" (IVal 18),
    Constant "ATTACH_RULEG" (IVal 23),
    Constant "AVOID_CHARACTERS" (IVal 1),
    Constant "AVOID_DYNAMIC_OBSTACLES" (IVal 2),
    Constant "AVOID_NONE" (IVal 0),
    Constant "CAMERA_ACTIVE" (IVal 12),
    Constant "CAMERA_BEHINDNESS_ANGLE" (IVal 8),
    Constant "CAMERA_BEHINDNESS_LAG" (IVal 9),
    Constant "CAMERA_DISTANCE" (IVal 7),
    Constant "CAMERA_FOCUS" (IVal 17),
    Constant "CAMERA_FOCUS_LAG" (IVal 6),
    Constant "CAMERA_FOCUS_LOCKED" (IVal 22),
    Constant "CAMERA_FOCUS_OFFSET" (IVal 1),
    Constant "CAMERA_FOCUS_THRESHOLD" (IVal 11),
    Constant "CAMERA_PITCH" (IVal 0),
    Constant "CAMERA_POSITION" (IVal 13),
    Constant "CAMERA_POSITION_LAG" (IVal 5),
    Constant "CAMERA_POSITION_LOCKED" (IVal 21),
    Constant "CAMERA_POSITION_THRESHOLD" (IVal 10),
    Constant "CHANGED_ALLOWED_DROP" llcChangedAllowedDrop,
    Constant "CHANGED_COLOR" (IVal 0x2),
    Constant "CHANGED_INVENTORY" llcChangedInventory,
    Constant "CHANGED_LINK" llcChangedLink,
    Constant "CHANGED_MEDIA" (IVal 0x800),
    Constant "CHANGED_OWNER" (IVal 0x80),
    Constant "CHANGED_REGION" (IVal 0x100),
    Constant "CHANGED_REGION_START" llcChangedRegionStart,
    Constant "CHANGED_SCALE" (IVal 0x8),
    Constant "CHANGED_SHAPE" (IVal 0x4),
    Constant "CHANGED_TELEPORT" (IVal 0x200),
    Constant "CHANGED_TEXTURE" (IVal 0x10),
    Constant "CHARACTER_AVOIDANCE_MODE" (IVal 5),
    Constant "CHARACTER_CMD_JUMP" (IVal 1),
    Constant "CHARACTER_CMD_SMOOTH_STOP" (IVal 2),
    Constant "CHARACTER_CMD_STOP" (IVal 0),
    Constant "CHARACTER_DESIRED_SPEED" (IVal 1),
    Constant "CHARACTER_DESIRED_TURN_SPEED" (IVal 12),
    Constant "CHARACTER_RADIUS" (IVal 2),
    Constant "CHARACTER_LENGTH" (IVal 3),
    Constant "CHARACTER_MAX_ACCEL" (IVal 8),
    Constant "CHARACTER_MAX_DECEL" (IVal 9),
    Constant "CHARACTER_MAX_SPEED" (IVal 13),
    Constant "CHARACTER_MAX_TURN_RADIUS" (IVal 10),
    Constant "CHARACTER_ORIENTATION" (IVal 4),
    Constant "CHARACTER_TYPE" (IVal 6),
    Constant "CHARACTER_TYPE_A" (IVal 0),
    Constant "CHARACTER_TYPE_B" (IVal 1),
    Constant "CHARACTER_TYPE_C" (IVal 2),
    Constant "CHARACTER_TYPE_D" (IVal 3),
    Constant "CHARACTER_TYPE_NONE" (IVal 4),    
    Constant "CLICK_ACTION_NONE" llcClickActionNone,
    Constant "CLICK_ACTION_TOUCH" llcClickActionTouch,
    Constant "CLICK_ACTION_SIT" llcClickActionSit,
    Constant "CLICK_ACTION_BUY" llcClickActionBuy,
    Constant "CLICK_ACTION_PAY" llcClickActionPay,
    Constant "CLICK_ACTION_OPEN" llcClickActionOpen,
    Constant "CLICK_ACTION_PLAY" llcClickActionPlay,
    Constant "CLICK_ACTION_OPEN_MEDIA" llcClickActionOpenMedia,
    Constant "CONTENT_TYPE_TEXT" (IVal 0x0),
    Constant "CONTENT_TYPE_HTML" (IVal 0x1),
    Constant "CONTROL_BACK" (IVal 0x2),
    Constant "CONTROL_DOWN" (IVal 0x20),
    Constant "CONTROL_FWD" (IVal 0x1),
    Constant "CONTROL_LBUTTON" (IVal 0x10000000),
    Constant "CONTROL_LEFT" (IVal 0x4),
    Constant "CONTROL_ML_LBUTTON" (IVal 0x40000000),
    Constant "CONTROL_RIGHT" (IVal 0x8),
    Constant "CONTROL_ROT_LEFT" (IVal 0x100),
    Constant "CONTROL_ROT_RIGHT" (IVal 0x200),
    Constant "CONTROL_UP" (IVal 0x10),
    Constant "DATA_BORN" llcDataBorn,
    Constant "DATA_NAME" llcDataName,
    Constant "DATA_ONLINE" llcDataOnline,
    Constant "DATA_PAYINFO" llcDataPayinfo,
    Constant "DATA_RATING" llcDataRating,
    Constant "DATA_SIM_POS" llcDataSimPos,
    Constant "DATA_SIM_RATING" llcDataSimRating,
    Constant "DATA_SIM_STATUS" llcDataSimStatus,
    Constant "DEBUG_CHANNEL" llcDebugChannel,
    Constant "DEG_TO_RAD" (FVal 0.01745329238),
    Constant "DENSITY" (IVal 1),
    Constant "EOF" $ SVal cEOF,
    Constant "ESTATE_ACCESS_ALLOWED_AGENT_ADD" (IVal 4),
    Constant "ESTATE_ACCESS_ALLOWED_AGENT_REMOVE" (IVal 8),
    Constant "ESTATE_ACCESS_ALLOWED_GROUP_ADD" (IVal 16),
    Constant "ESTATE_ACCESS_ALLOWED_GROUP_REMOVE" (IVal 32),
    Constant "ESTATE_ACCESS_BANNED_AGENT_ADD" (IVal 64),
    Constant "ESTATE_ACCESS_BANNED_AGENT_REMOVE" (IVal 128),
    Constant "FALSE" (IVal 0),
    Constant "FORCE_DIRECT_PATH" (IVal 1),
    Constant "FRICTION" (IVal 2),

    Constant "GCNP_RADIUS" (IVal 0),
    Constant "GCNP_STATIC" (IVal 1),

    Constant "GRAVITY_MULTIPLIER" (IVal 8), 
    Constant "HORIZONTAL" (IVal 1),
    Constant "HTTP_BODY_MAXLENGTH" llcHTTPBodyMaxlength,
    Constant "HTTP_BODY_TRUNCATED" llcHTTPBodyTruncated,
    Constant "HTTP_METHOD" llcHTTPMethod,
    Constant "HTTP_MIMETYPE" llcHTTPMimetype,
    Constant "HTTP_VERIFY_CERT" llcHTTPVerifyCert,
    Constant "HTTP_VERBOSE_THROTTLE" (IVal 4),
    Constant "INVENTORY_ALL" llcInventoryAll,
    Constant "INVENTORY_ANIMATION" llcInventoryAnimation,
    Constant "INVENTORY_BODYPART" llcInventoryBodyPart,
    Constant "INVENTORY_CLOTHING" llcInventoryClothing,
    Constant "INVENTORY_GESTURE" llcInventoryGesture,
    Constant "INVENTORY_LANDMARK" llcInventoryLandmark,
    Constant "INVENTORY_NONE" llcInventoryNone,
    Constant "INVENTORY_NOTECARD" llcInventoryNotecard,
    Constant "INVENTORY_OBJECT" llcInventoryObject,
    Constant "INVENTORY_SCRIPT" llcInventoryScript,
    Constant "INVENTORY_SOUND" llcInventorySound,
    Constant "INVENTORY_TEXTURE" llcInventoryTexture,
    Constant "KFM_COMMAND" (IVal 0),
    Constant "KFM_CMD_STOP" (IVal 1),
    Constant "KFM_CMD_PLAY" (IVal 0),
    Constant "KFM_CMD_PAUSE" (IVal 2),
    Constant "KFM_DATA" (IVal 2),
    Constant "KFM_FORWARD" (IVal 0),
    Constant "KFM_LOOP" (IVal 1),
    Constant "KFM_MODE" (IVal 1),
    Constant "KFM_PING_PONG" (IVal 2),
    Constant "KFM_REVERSE" (IVal 3),
    Constant "KFM_ROTATION" (IVal 1),
    Constant "KFM_TRANSLATION" (IVal 2),
    Constant "LAND_LARGE_BRUSH" (IVal 3),
    Constant "LAND_LEVEL" (IVal 0),
    Constant "LAND_LOWER" (IVal 2),
    Constant "LAND_MEDIUM_BRUSH" (IVal 2),
    Constant "LAND_NOISE" (IVal 4),
    Constant "LAND_RAISE" (IVal 1),
    Constant "LAND_REVERT" (IVal 5),
    Constant "LAND_SMALL_BRUSH" (IVal 1),
    Constant "LAND_SMOOTH" (IVal 3),
    Constant "LINK_ALL_CHILDREN" (IVal (-3)),
    Constant "LINK_ALL_OTHERS" (IVal (-2)),
    Constant "LINK_ROOT" (IVal 1),
    Constant "LINK_SET" (IVal (-1)),
    Constant "LINK_THIS" (IVal (-4)),
    Constant "LIST_STAT_GEOMETRIC_MEAN" (IVal 9),
    Constant "LIST_STAT_MAX" (IVal 2),
    Constant "LIST_STAT_MEAN"  (IVal 3),
    Constant "LIST_STAT_MEDIAN" (IVal 4),
    Constant "LIST_STAT_MIN" (IVal 1),
    Constant "LIST_STAT_NUM_COUNT" (IVal 8),
    Constant "LIST_STAT_RANGE" (IVal 0),
    Constant "LIST_STAT_STD_DEV" (IVal 5),
    Constant "LIST_STAT_SUM" (IVal 6),
    Constant "LIST_STAT_SUM_SQUARES" (IVal 7),
    Constant "LOOP" (IVal 0x2),
    Constant "MASK_BASE" llcMaskBase,
    Constant "MASK_EVERYONE" llcMaskEveryone,
    Constant "MASK_GROUP" llcMaskGroup,
    Constant "MASK_NEXT" llcMaskNext,
    Constant "MASK_OWNER" llcMaskOwner,
    Constant "NULL_KEY" (SVal "00000000-0000-0000-0000-000000000000"),
    Constant "OBJECT_CREATOR" (IVal 8),
    Constant "OBJECT_DESC" (IVal 2),
    Constant "OBJECT_NAME" (IVal 1),
    Constant "OBJECT_OWNER" (IVal 6),
    Constant "OBJECT_PHYSICS_COST" (IVal 16),
    Constant "OBJECT_POS" (IVal 3),
    Constant "OBJECT_PRIM_EQUIVALENCE" (IVal 13),
    Constant "OBJECT_ROT" (IVal 4),
    Constant "OBJECT_SCRIPT_MEMORY" (IVal 11),
    Constant "OBJECT_TOTAL_SCRIPT_COUNT" (IVal 10),
    Constant "OBJECT_RUNNING_SCRIPT_COUNT" (IVal 9),
    Constant "OBJECT_SCRIPT_TIME" (IVal 12),
    Constant "OBJECT_SERVER_COST" (IVal 14),
    Constant "OBJECT_STREAMING_COST" (IVal 15),
    Constant "OBJECT_VELOCITY" (IVal 5),
    Constant "OBJECT_GROUP" (IVal 7),
    Constant "OBJECT_UNKNOWN_DETAIL" (IVal (-1)),
    Constant "PARCEL_COUNT_GROUP" (IVal 2),
    Constant "PARCEL_COUNT_OTHER" (IVal 3),
    Constant "PARCEL_COUNT_OWNER" (IVal 1),
    Constant "PARCEL_COUNT_SELECTED" (IVal 4),
    Constant "PARCEL_COUNT_TEMP" (IVal 5),
    Constant "PARCEL_COUNT_TOTAL" (IVal 0),
    Constant "PARCEL_DETAILS_AREA" llcParcelDetailsArea,
    Constant "PARCEL_DETAILS_DESC" llcParcelDetailsDesc,
    Constant "PARCEL_DETAILS_GROUP" llcParcelDetailsGroup,
    Constant "PARCEL_DETAILS_ID" (IVal 5),
    Constant "PARCEL_DETAILS_NAME" llcParcelDetailsName,
    Constant "PARCEL_DETAILS_OWNER" llcParcelDetailsOwner,
    Constant "PARCEL_DETAILS_SEE_AVATARS" (IVal 6),
    Constant "PARCEL_FLAG_ALLOW_ALL_OBJECT_ENTRY" (IVal (1 `shiftL` 27)),
    Constant "PARCEL_FLAG_ALLOW_CREATE_GROUP_OBJECTS" (IVal (1 `shiftL` 26)),
    Constant "PARCEL_FLAG_ALLOW_CREATE_OBJECTS" (IVal (1 `shiftL` 6)),
    Constant "PARCEL_FLAG_ALLOW_DAMAGE" (IVal (1 `shiftL` 5)),
    Constant "PARCEL_FLAG_ALLOW_FLY" (IVal 1),
    Constant "PARCEL_FLAG_ALLOW_GROUP_OBJECT_ENTRY" (IVal (1 `shiftL` 28)),
    Constant "PARCEL_FLAG_ALLOW_GROUP_SCRIPTS" (IVal (1 `shiftL` 25)),
    Constant "PARCEL_FLAG_ALLOW_LANDMARK" (IVal (1 `shiftL` 3)),
    Constant "PARCEL_FLAG_ALLOW_SCRIPTS" (IVal (1 `shiftL` 1)),
    Constant "PARCEL_FLAG_ALLOW_TERRAFORM" (IVal (1 `shiftL` 4)),
    Constant "PARCEL_FLAG_LOCAL_SOUND_ONLY" (IVal (1 `shiftL` 15)),
    Constant "PARCEL_FLAG_RESTRICT_PUSHOBJECT" (IVal (1 `shiftL` 21)),
    Constant "PARCEL_FLAG_USE_ACCESS_GROUP" (IVal (1 `shiftL` 8)),
    Constant "PARCEL_FLAG_USE_ACCESS_LIST" (IVal (1 `shiftL` 9)),
    Constant "PARCEL_FLAG_USE_BAN_LIST" (IVal (1 `shiftL` 10)),
    Constant "PARCEL_FLAG_USE_LAND_PASS_LIST" (IVal (1 `shiftL` 11)),
    Constant "PARCEL_MEDIA_COMMAND_AGENT" (IVal 7),
    Constant "PARCEL_MEDIA_COMMAND_AUTO_ALIGN" (IVal 9),
    Constant "PARCEL_MEDIA_COMMAND_DESC" (IVal 12),
    Constant "PARCEL_MEDIA_COMMAND_LOOP" (IVal 3),
    Constant "PARCEL_MEDIA_COMMAND_LOOP_SET" (IVal 13),
    Constant "PARCEL_MEDIA_COMMAND_PAUSE" (IVal 1),
    Constant "PARCEL_MEDIA_COMMAND_PLAY" (IVal 2),
    Constant "PARCEL_MEDIA_COMMAND_SIZE" (IVal 11),
    Constant "PARCEL_MEDIA_COMMAND_STOP" (IVal 0),
    Constant "PARCEL_MEDIA_COMMAND_TEXTURE" (IVal 4),
    Constant "PARCEL_MEDIA_COMMAND_TIME" (IVal 6),
    Constant "PARCEL_MEDIA_COMMAND_TYPE" (IVal 10),
    Constant "PARCEL_MEDIA_COMMAND_UNLOAD" (IVal 8),
    Constant "PARCEL_MEDIA_COMMAND_URL" (IVal 5),
    Constant "PASSIVE" llcPassive,
    Constant "PATROL_PAUSE_AT_WAYPOINTS" (IVal 0),
    Constant "PAYMENT_INFO_ON_FILE" (IVal 1),
    Constant "PAYMENT_INFO_USED" (IVal 2),
    Constant "PAY_DEFAULT" (IVal (-2)),
    Constant "PAY_HIDE" (IVal (-1)),
    Constant "PERMISSION_ATTACH" llcPermissionAttach,
    Constant "PERMISSION_CHANGE_JOINTS" (IVal 0x100),
    Constant "PERMISSION_CHANGE_LINKS" llcPermissionChangeLinks,
    Constant "PERMISSION_CHANGE_PERMISSIONS" (IVal 0x200),
    Constant "PERMISSION_CONTROL_CAMERA" llcPermissionControlCamera,
    Constant "PERMISSION_DEBIT" llcPermissionDebit,
    Constant "PERMISSION_RELEASE_OWNERSHIP" (IVal 0x40),
    Constant "PERMISSION_REMAP_CONTROLS" (IVal 0x8),
    Constant "PERMISSION_TAKE_CONTROLS" llcPermissionTakeControls,
    Constant "PERMISSION_TELEPORT" (IVal 0x1000),
    Constant "PERMISSION_TRACK_CAMERA" (IVal 0x400),
    Constant "PERMISSION_TRIGGER_ANIMATION" llcPermissionTriggerAnimation,
    Constant "PERM_ALL" (IVal 0x7FFFFFFF),
    Constant "PERM_COPY" llcPermCopy,
    Constant "PERM_MODIFY" llcPermModify,
    Constant "PERM_MOVE" llcPermMove,
    Constant "PERM_TRANSFER" llcPermTransfer,
    Constant "PI" (FVal 3.14159274),
    Constant "PING_PONG" (IVal 0x8),
    Constant "PI_BY_TWO" (FVal 1.57079637),
    Constant "PRIM_BUMP_BARK" (IVal 4),
    Constant "PRIM_BUMP_BLOBS" (IVal 12),
    Constant "PRIM_BUMP_BRICKS" (IVal 5),
    Constant "PRIM_BUMP_BRIGHT" (IVal 1),
    Constant "PRIM_BUMP_CHECKER" (IVal 6),
    Constant "PRIM_BUMP_CONCRETE" (IVal 7),
    Constant "PRIM_BUMP_DARK" (IVal 2),
    Constant "PRIM_BUMP_DISKS" (IVal 10),
    Constant "PRIM_BUMP_GRAVEL" (IVal 11),
    Constant "PRIM_BUMP_LARGETILE" (IVal 14),
    Constant "PRIM_BUMP_NONE" (IVal 0),
    Constant "PRIM_BUMP_SHINY" llcPrimBumpShiny,
    Constant "PRIM_BUMP_SIDING" (IVal 13),
    Constant "PRIM_BUMP_STONE" (IVal 9),
    Constant "PRIM_BUMP_STUCCO" (IVal 15),
    Constant "PRIM_BUMP_SUCTION" (IVal 16),
    Constant "PRIM_BUMP_TILE" (IVal 8),
    Constant "PRIM_BUMP_WEAVE" (IVal 17),
    Constant "PRIM_BUMP_WOOD" (IVal 3),
    Constant "PRIM_CAST_SHADOWS" (IVal 24),
    Constant "PRIM_COLOR" llcPrimColor,
    Constant "PRIM_DESC" (IVal 28),
    Constant "PRIM_FLEXIBLE" llcPrimFlexible,
    Constant "PRIM_FULLBRIGHT" llcPrimFullbright,
    Constant "PRIM_GLOW" (IVal 25),
    Constant "PRIM_HOLE_CIRCLE" (IVal cPrimHoleCircle),
    Constant "PRIM_HOLE_DEFAULT" (IVal cPrimHoleDefault),
    Constant "PRIM_HOLE_SQUARE" (IVal cPrimHoleSquare),
    Constant "PRIM_HOLE_TRIANGLE" (IVal cPrimHoleTriangle),
    Constant "PRIM_LINK_TARGET" (IVal 34),
    Constant "PRIM_MATERIAL" llcPrimMaterial,
    Constant "PRIM_MATERIAL_FLESH" (IVal 4),
    Constant "PRIM_MATERIAL_GLASS" (IVal 2),
    Constant "PRIM_MATERIAL_LIGHT" (IVal 7),
    Constant "PRIM_MATERIAL_METAL" (IVal 1),
    Constant "PRIM_MATERIAL_PLASTIC" (IVal 5),
    Constant "PRIM_MATERIAL_RUBBER" (IVal 6),
    Constant "PRIM_MATERIAL_STONE" (IVal 0),
    Constant "PRIM_MATERIAL_WOOD" (IVal 3),
    Constant "PRIM_MEDIA_ALT_IMAGE_ENABLE" (IVal 0),
    Constant "PRIM_MEDIA_CONTROLS" (IVal 1),
    Constant "PRIM_MEDIA_CURRENT_URL" (IVal 2),
    Constant "PRIM_MEDIA_HOME_URL" (IVal 3),
    Constant "PRIM_MEDIA_AUTO_LOOP" (IVal 4),
    Constant "PRIM_MEDIA_AUTO_PLAY" (IVal 5),
    Constant "PRIM_MEDIA_AUTO_SCALE" (IVal 6),
    Constant "PRIM_MEDIA_AUTO_ZOOM" (IVal 7),
    Constant "PRIM_MEDIA_CONTROLS_MINI" (IVal 1),
    Constant "PRIM_MEDIA_CONTROLS_STANDARD" (IVal 0),
    Constant "PRIM_MEDIA_FIRST_CLICK_INTERACT" (IVal 8),
    Constant "PRIM_MEDIA_WIDTH_PIXELS" (IVal 9),
    Constant "PRIM_MEDIA_HEIGHT_PIXELS" (IVal 10),
    Constant "PRIM_MEDIA_PERM_NONE" (IVal 0),
    Constant "PRIM_MEDIA_PERM_OWNER" (IVal 1),
    Constant "PRIM_MEDIA_PERM_GROUP" (IVal 2),
    Constant "PRIM_MEDIA_PERM_ANYONE" (IVal 4),
    Constant "PRIM_MEDIA_PERMS_CONTROL" (IVal 14),
    Constant "PRIM_MEDIA_PERMS_INTERACT" (IVal 13),
    Constant "PRIM_MEDIA_WHITELIST" (IVal 12),
    Constant "PRIM_MEDIA_WHITELIST_ENABLE" (IVal 11),
    Constant "PRIM_NAME" (IVal 27),
    Constant "PRIM_OMEGA" (IVal 32),
    Constant "PRIM_PHANTOM" llcPrimPhantom,
    Constant "PRIM_PHYSICS" llcPrimPhysics,
    Constant "PRIM_PHYSICS_MATERIAL" (IVal 31),
    Constant "PRIM_PHYSICS_SHAPE_TYPE" (IVal 30),
    Constant "PRIM_PHYSICS_SHAPE_PRIM" (IVal 0),
    Constant "PRIM_PHYSICS_SHAPE_CONVEX" (IVal 2),
    Constant "PRIM_PHYSICS_SHAPE_NONE" (IVal 1),
    Constant "PRIM_POINT_LIGHT" llcPrimPointLight,
    Constant "PRIM_POS_LOCAL" (IVal 33),
    Constant "PRIM_POSITION" llcPrimPosition,
    Constant "PRIM_ROT_LOCAL" (IVal 29),
    Constant "PRIM_ROTATION" llcPrimRotation,
    Constant "PRIM_SCULPT_FLAG_INVERT" (IVal 64),
    Constant "PRIM_SCULPT_FLAG_MIRROR" (IVal 128),
    Constant "PRIM_SCULPT_TYPE_CYLINDER" (IVal 4),
    Constant "PRIM_SCULPT_TYPE_PLANE" (IVal 3),
    Constant "PRIM_SCULPT_TYPE_SPHERE" (IVal 1),
    Constant "PRIM_SCULPT_TYPE_TORUS" (IVal 2),
    Constant "PRIM_SCULPT_TYPE_MASK" (IVal 7),
    Constant "PRIM_SHINY_HIGH" (IVal 3),
    Constant "PRIM_SHINY_LOW" (IVal 1),
    Constant "PRIM_SHINY_MEDIUM" (IVal 2),
    Constant "PRIM_SHINY_NONE" (IVal 0),
    Constant "PRIM_SIZE" llcPrimSize,
    Constant "PRIM_SLICE" (IVal 35),
    Constant "PRIM_TEMP_ON_REZ" llcPrimTempOnRez,
    Constant "PRIM_TEXGEN" llcPrimTexgen,
    Constant "PRIM_TEXGEN_DEFAULT" (IVal 0),
    Constant "PRIM_TEXGEN_PLANAR" (IVal 1),
    Constant "PRIM_TEXT" (IVal 26),
    Constant "PRIM_TEXTURE" llcPrimTexture,
    Constant "PRIM_TYPE" llcPrimType,
    Constant "PRIM_TYPE_BOX" llcPrimTypeBox,
    Constant "PRIM_TYPE_CYLINDER" llcPrimTypeCylinder,
    Constant "PRIM_TYPE_PRISM" llcPrimTypePrism,
    Constant "PRIM_TYPE_RING" llcPrimTypeRing,
    Constant "PRIM_TYPE_SPHERE" llcPrimTypeSphere,
    Constant "PRIM_TYPE_SCULPT" llcPrimTypeSculpt,
    Constant "PRIM_TYPE_TORUS" llcPrimTypeTorus,
    Constant "PRIM_TYPE_TUBE" llcPrimTypeTube,
    Constant "PROFILE_NONE" (IVal 0),
    Constant "PROFILE_SCRIPT_MEMORY" (IVal 1),
    Constant "PSYS_PART_BOUNCE_MASK" (IVal 0x4),
    Constant "PSYS_PART_EMISSIVE_MASK" (IVal 0x100),
    Constant "PSYS_PART_END_ALPHA" (IVal 4),
    Constant "PSYS_PART_END_COLOR" (IVal 3),
    Constant "PSYS_PART_END_SCALE" (IVal 6),
    Constant "PSYS_PART_FLAGS" (IVal 0),
    Constant "PSYS_PART_FOLLOW_SRC_MASK" (IVal 0x10),
    Constant "PSYS_PART_FOLLOW_VELOCITY_MASK" (IVal 0x20),
    Constant "PSYS_PART_INTERP_COLOR_MASK" (IVal 0x1),
    Constant "PSYS_PART_INTERP_SCALE_MASK" (IVal 0x2),
    Constant "PSYS_PART_MAX_AGE" (IVal 7),
    Constant "PSYS_PART_START_ALPHA" (IVal 2),
    Constant "PSYS_PART_START_COLOR" (IVal 1),
    Constant "PSYS_PART_START_SCALE" (IVal 5),
    Constant "PSYS_PART_TARGET_LINEAR_MASK" (IVal 0x80),
    Constant "PSYS_PART_TARGET_POS_MASK" (IVal 0x40),
    Constant "PSYS_PART_WIND_MASK" (IVal 0x8),
    Constant "PSYS_SRC_ACCEL" (IVal 8),
    Constant "PSYS_SRC_ANGLE_BEGIN" (IVal 22),
    Constant "PSYS_SRC_ANGLE_END" (IVal 23),
    Constant "PSYS_SRC_BURST_PART_COUNT" (IVal 15),
    Constant "PSYS_SRC_BURST_RADIUS" (IVal 16),
    Constant "PSYS_SRC_BURST_RATE" (IVal 13),
    Constant "PSYS_SRC_BURST_SPEED_MAX" (IVal 18),
    Constant "PSYS_SRC_BURST_SPEED_MIN" (IVal 17),
    Constant "PSYS_SRC_INNERANGLE" (IVal 10),
    Constant "PSYS_SRC_MAX_AGE" (IVal 19),
    Constant "PSYS_SRC_OBJ_REL_MASK" (IVal 1),
    Constant "PSYS_SRC_OMEGA" (IVal 21),
    Constant "PSYS_SRC_OUTERANGLE" (IVal 11),
    Constant "PSYS_SRC_PATTERN" (IVal 9),
    Constant "PSYS_SRC_PATTERN_ANGLE" (IVal 0x4),
    Constant "PSYS_SRC_PATTERN_ANGLE_CONE" (IVal 0x8),
    Constant "PSYS_SRC_PATTERN_ANGLE_CONE_EMPTY" (IVal 0x10),
    Constant "PSYS_SRC_PATTERN_DROP" (IVal 0x1),
    Constant "PSYS_SRC_PATTERN_EXPLODE" (IVal 0x2),
    Constant "PSYS_SRC_TARGET_KEY" (IVal 20),
    Constant "PSYS_SRC_TEXTURE" (IVal 12),
    Constant "PUBLIC_CHANNEL" (IVal 0),

    Constant "PURSUE_OFFSET" (IVal 1),
    Constant "PURSUIT_FUZZ_FACTOR" (IVal 3),
    Constant "PURSUIT_INTERCEPT" (IVal 4),
    Constant "PURSUIT_GOAL_TOLERANCE" (IVal 5),

    Constant "PU_EVADE_HIDDEN" (IVal 0x07),
    Constant "PU_EVADE_SPOTTED" (IVal 0x08),
    Constant "PU_FAILURE_DYNAMIC_PATHFINDING_DISABLED" (IVal 0x0A),
    Constant "PU_FAILURE_INVALID_GOAL" (IVal 3),
    Constant "PU_FAILURE_INVALID_START" (IVal 0x02),
    Constant "PU_FAILURE_NO_NAVMESH" (IVal 0x09),
    Constant "PU_FAILURE_NO_VALID_DESTINATION" (IVal 0x06),
    Constant "PU_FAILURE_OTHER" (IVal 0xF4240),
    Constant "PU_FAILURE_PARCEL_UNREACHABLE" (IVal 0x0B),
    Constant "PU_FAILURE_TARGET_GONE" (IVal 0x05),
    Constant "PU_FAILURE_UNREACHABLE" (IVal 0x04),
    Constant "PU_GOAL_REACHED" (IVal 0x01),
    Constant "PU_SLOWDOWN_DISTANCE_REACHED" (IVal 0x00),

    Constant "RC_DETECT_PHANTOM" (IVal 1),

    Constant "RC_DATA_FLAGS" (IVal 2),
    Constant "RC_GET_NORMAL" (IVal 1),
    Constant "RC_GET_ROOT_KEY" (IVal 2),
    Constant "RC_GET_LINK_NUM" (IVal 4),

    Constant "RC_MAX_HITS" (IVal 3),

    Constant "RC_REJECT_TYPES" (IVal 0),
    Constant "RC_REJECT_AGENTS" (IVal 1),
    Constant "RC_REJECT_PHYSICAL" (IVal 2),
    Constant "RC_REJECT_NONPHYSICAL" (IVal 4),
    Constant "RC_REJECT_LAND" (IVal 8),

    Constant "RCERR_UNKNOWN" (IVal (-1)),
    Constant "RCERR_SIM_PERF_LOW" (IVal (-2)),
    Constant "RCERR_CAST_TIME_EXCEEDED" (IVal (-3)),

    Constant "RAD_TO_DEG" (FVal 57.29578),
    Constant "REGION_FLAG_ALLOW_DAMAGE" (IVal 1),
    Constant "REGION_FLAG_ALLOW_DIRECT_TELEPORT" (IVal (1 `shiftL` 20)),
    Constant "REGION_FLAG_BLOCK_FLY" (IVal (1 `shiftL` 19)),
    Constant "REGION_FLAG_BLOCK_TERRAFORM" (IVal (1 `shiftL` 6)),
    Constant "REGION_FLAG_DISABLE_COLLISIONS" (IVal (1 `shiftL` 12)),
    Constant "REGION_FLAG_DISABLE_PHYSICS" (IVal (1 `shiftL` 14)),
    Constant "REGION_FLAG_FIXED_SUN" (IVal (1 `shiftL` 4)),
    Constant "REGION_FLAG_RESTRICT_PUSHOBJECT" (IVal (1 `shiftL` 22)),
    Constant "REGION_FLAG_SANDBOX" (IVal (1 `shiftL` 8)),
    Constant "REMOTE_DATA_CHANNEL" llcRemoteDataChannel,
    Constant "REMOTE_DATA_REPLY" llcRemoteDataReply,
    Constant "REMOTE_DATA_REQUEST" llcRemoteDataRequest,
    Constant "REQUIRE_LINE_OF_SIGHT" (IVal 2),
    Constant "RESTITUTION" (IVal 4), 
    Constant "REVERSE" (IVal 0x4),
    Constant "ROTATE" (IVal 0x20),
    Constant "SCALE" (IVal 0x40),
    Constant "SCRIPTED" llcScripted,
    Constant "SMOOTH" (IVal 0x10),
    Constant "SQRT2" (FVal 1.414213538),
    Constant "STATUS_BLOCK_GRAB" (IVal 0x40),
    Constant "STATUS_BLOCK_GRAB_OBJECT" (IVal 0x400),
    Constant "STATUS_BOUNDS_ERROR" (IVal 1002),
    Constant "STATUS_CAST_SHADOWS" (IVal 0x200),
    Constant "STATUS_DIE_AT_EDGE" (IVal 0x80),
    Constant "STATUS_INTERNAL_ERROR" (IVal 1999),
    Constant "STATUS_MALFORMED_PARAMS" (IVal 1000),
    Constant "STATUS_NOT_FOUND" (IVal 1003),
    Constant "STATUS_NOT_SUPPORTED" (IVal 1004),
    Constant "STATUS_OK" (IVal 0),
    Constant "STATUS_PHANTOM" (IVal 0x10),
    Constant "STATUS_PHYSICS" (IVal 0x1),
    Constant "STATUS_RETURN_AT_EDGE" (IVal 0x100),
    Constant "STATUS_ROTATE_X" (IVal 0x2),
    Constant "STATUS_ROTATE_Y" (IVal 0x4),
    Constant "STATUS_ROTATE_Z" (IVal 0x8),
    Constant "STATUS_SANDBOX" (IVal 0x20),
    Constant "STATUS_TYPE_MISMATCH" (IVal 1001),
    Constant "STATUS_WHITELIST_FAILED" (IVal 2001),
    Constant "STRING_TRIM" (IVal 0x03),
    Constant "STRING_TRIM_HEAD" (IVal 0x01),
    Constant "STRING_TRIM_TAIL" (IVal 0x02),
    Constant "TEXTURE_BLANK" (KVal $ LSLKey "5748decc-f629-461c-9a36-a35a221fe21f"),
    Constant "TEXTURE_DEFAULT" (KVal $ LSLKey "8b5fec65-8d8d-9dc5-cda8-8fdf2716e361"),
    Constant "TEXTURE_MEDIA" (KVal $ LSLKey "8b5fec65-8d8d-9dc5-cda8-8fdf2716e361"),
    Constant "TEXTURE_PLYWOOD" (KVal $ LSLKey "89556747-24cb-43ed-920b-47caed15465f"),
    Constant "TEXTURE_TRANSPARENT" (KVal $ LSLKey "59facb66-4a72-40a2-815c-7d9b42c56f60"),
    Constant "TOUCH_INVALID_FACE" (IVal 0xffffffff),
    Constant "TOUCH_INVALID_TEXCOORD" (VVal (-1) (-1) 0),
    Constant "TOUCH_INVALID_VECTOR" (VVal 0 0 0),
    Constant "TRAVERSAL_TYPE" (IVal 7),
    Constant "TRAVERSAL_TYPE_SLOW" (IVal 0),
    Constant "TRAVERSAL_TYPE_FAST" (IVal 1),
    Constant "TRAVERSAL_TYPE_NONE" (IVal 2),
    Constant "TRUE" (IVal 1),
    Constant "TWO_PI" (FVal 6.28318548),
    Constant "TYPE_FLOAT" (IVal 2),
    Constant "TYPE_INTEGER" (IVal 1),
    Constant "TYPE_INVALID" (IVal 0),
    Constant "TYPE_KEY" (IVal 4),
    Constant "TYPE_ROTATION" (IVal 6),
    Constant "TYPE_STRING" (IVal 3),
    Constant "TYPE_VECTOR" (IVal 5),
    Constant "URL_REQUEST_DENIED" llcUrlRequestDenied,
    Constant "URL_REQUEST_GRANTED" llcUrlRequestGranted,
    Constant "VEHICLE_ANGULAR_DEFLECTION_EFFICIENCY" (IVal 32),
    Constant "VEHICLE_ANGULAR_DEFLECTION_TIMESCALE" (IVal 33),
    Constant "VEHICLE_ANGULAR_FRICTION_TIMESCALE" (IVal 17),
    Constant "VEHICLE_ANGULAR_MOTOR_DECAY_TIMESCALE" (IVal 35),
    Constant "VEHICLE_ANGULAR_MOTOR_DIRECTION" (IVal 19),
    Constant "VEHICLE_ANGULAR_MOTOR_TIMESCALE" (IVal 34),
    Constant "VEHICLE_BANKING_EFFICIENCY" (IVal 38),
    Constant "VEHICLE_BANKING_MIX" (IVal 39),
    Constant "VEHICLE_BANKING_TIMESCALE" (IVal 40),
    Constant "VEHICLE_BUOYANCY" (IVal 27),
    Constant "VEHICLE_FLAG_CAMERA_DECOUPLED" (IVal 0x200),
    Constant "VEHICLE_FLAG_HOVER_GLOBAL_HEIGHT" (IVal 0x10),
    Constant "VEHICLE_FLAG_HOVER_TERRAIN_ONLY" (IVal 0x8),
    Constant "VEHICLE_FLAG_HOVER_UP_ONLY" (IVal 0x20),
    Constant "VEHICLE_FLAG_HOVER_WATER_ONLY" (IVal 0x4),
    Constant "VEHICLE_FLAG_LIMIT_MOTOR_UP" (IVal 0x40),
    Constant "VEHICLE_FLAG_LIMIT_ROLL_ONLY" (IVal 0x2),
    Constant "VEHICLE_FLAG_MOUSELOOK_BANK" (IVal 0x100),
    Constant "VEHICLE_FLAG_MOUSELOOK_STEER" (IVal 0x80),
    Constant "VEHICLE_FLAG_NO_DEFLECTION_UP" (IVal 0x1),
    Constant "VEHICLE_FLAG_NO_FLY_UP" (IVal 0x1),
    Constant "VEHICLE_HOVER_EFFICIENCY" (IVal 25),
    Constant "VEHICLE_HOVER_HEIGHT" (IVal 24),
    Constant "VEHICLE_HOVER_TIMESCALE" (IVal 26),
    Constant "VEHICLE_LINEAR_DEFLECTION_EFFICIENCY" (IVal 28),
    Constant "VEHICLE_LINEAR_DEFLECTION_TIMESCALE" (IVal 29),
    Constant "VEHICLE_LINEAR_FRICTION_TIMESCALE" (IVal 16),
    Constant "VEHICLE_LINEAR_MOTOR_DECAY_TIMESCALE" (IVal 31),
    Constant "VEHICLE_LINEAR_MOTOR_DIRECTION" (IVal 18),
    Constant "VEHICLE_LINEAR_MOTOR_OFFSET" (IVal 20),
    Constant "VEHICLE_LINEAR_MOTOR_TIMESCALE" (IVal 30),
    Constant "VEHICLE_REFERENCE_FRAME" (IVal 44),
    Constant "VEHICLE_TYPE_AIRPLANE" (IVal 4),
    Constant "VEHICLE_TYPE_BALLOON" (IVal 5),
    Constant "VEHICLE_TYPE_BOAT" (IVal 3),
    Constant "VEHICLE_TYPE_CAR" (IVal 2),
    Constant "VEHICLE_TYPE_NONE" (IVal 0),
    Constant "VEHICLE_TYPE_SLED" (IVal 1),
    Constant "VEHICLE_VERTICAL_ATTRACTION_EFFICIENCY" (IVal 36),
    Constant "VEHICLE_VERTICAL_ATTRACTION_TIMESCALE" (IVal 37),
    Constant "VERTICAL" (IVal 0),
    Constant "WANDER_PAUSE_AT_WAYPOINTS" (IVal 0),
    Constant "ZERO_ROTATION" llcZeroRotation,
    Constant "ZERO_VECTOR" llcZeroVector
    ]

findConstant s = findM (\ c -> s == constName c) allConstants
findConstVal s = fmap constVal $ findConstant s
findConstType s = fmap typeOfLSLValue $ findConstVal s
isConstant s =
    case findConstant s of
        Nothing -> False
        _ -> True

        
-- non LSL (lslForge only) constants
lslForgeAvatarKey = 0
lslForgeAvatarPos = 1
lslForgeAvatarRot = 2
lslForgeAvatarName = 3
