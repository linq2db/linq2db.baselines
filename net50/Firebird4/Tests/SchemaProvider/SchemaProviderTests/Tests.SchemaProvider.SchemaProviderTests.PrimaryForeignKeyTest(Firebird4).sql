BeforeExecute
-- Firebird4 Firebird

"AddIssue792Record"

BeforeExecute
-- Firebird4 Firebird
DECLARE @STR VarChar(50) -- String
SET     @STR = ''
DECLARE @IN_INPUTOUTPUTSTR VarChar(50) -- String
SET     @IN_INPUTOUTPUTSTR = ''
DECLARE @INPUTOUTPUTSTR VarChar(50) -- String
SET     @INPUTOUTPUTSTR = ''
DECLARE @OUTPUTSTR VarChar(50) -- String
SET     @OUTPUTSTR = ''

"OutRefEnumTest"

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0
DECLARE @IN_INPUTOUTPUTID Integer(4) -- Int32
SET     @IN_INPUTOUTPUTID = 0
DECLARE @STR VarChar(50) -- String
SET     @STR = ''
DECLARE @IN_INPUTOUTPUTSTR VarChar(50) -- String
SET     @IN_INPUTOUTPUTSTR = ''
DECLARE @INPUTOUTPUTID Integer(4) -- Int32
SET     @INPUTOUTPUTID = 0
DECLARE @INPUTOUTPUTSTR VarChar(50) -- String
SET     @INPUTOUTPUTSTR = ''
DECLARE @OUTPUTID Integer(4) -- Int32
SET     @OUTPUTID = 0
DECLARE @OUTPUTSTR VarChar(50) -- String
SET     @OUTPUTSTR = ''

"OutRefTest"

BeforeExecute
-- Firebird4 Firebird
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- String
SET     @GENDER = _utf8 x'00'
DECLARE @DIAGNOSIS VarChar(256) -- String
SET     @DIAGNOSIS = ''

"Patient_SelectAll"

BeforeExecute
-- Firebird4 Firebird
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- String
SET     @GENDER = _utf8 x'00'
DECLARE @DIAGNOSIS VarChar(256) -- String
SET     @DIAGNOSIS = ''

"Patient_SelectByName"

BeforeExecute
-- Firebird4 Firebird
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0

"Person_Delete"

BeforeExecute
-- Firebird4 Firebird
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- String
SET     @GENDER = _utf8 x'00'
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0

"Person_Insert"

BeforeExecute
-- Firebird4 Firebird
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- String
SET     @GENDER = _utf8 x'00'
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0

"Person_Insert_OutputParameter"

BeforeExecute
-- Firebird4 Firebird
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- String
SET     @GENDER = _utf8 x'00'

"Person_SelectAll"

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- String
SET     @GENDER = _utf8 x'00'

"Person_SelectByKey"

BeforeExecute
-- Firebird4 Firebird
DECLARE @IN_FIRSTNAME VarChar(50) -- String
SET     @IN_FIRSTNAME = ''
DECLARE @IN_LASTNAME VarChar(50) -- String
SET     @IN_LASTNAME = ''
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- String
SET     @GENDER = _utf8 x'00'

"Person_SelectByName"

BeforeExecute
-- Firebird4 Firebird
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- String
SET     @GENDER = _utf8 x'00'

"Person_Update"

BeforeExecute
-- Firebird4 Firebird
DECLARE @INTFIELD Integer(4) -- Int32
SET     @INTFIELD = 0
DECLARE @STRINGFIELD VarChar(50) -- String
SET     @STRINGFIELD = ''

"Scalar_DataReader"

BeforeExecute
-- Firebird4 Firebird
DECLARE @OUTPUTINT Integer(4) -- Int32
SET     @OUTPUTINT = 0
DECLARE @OUTPUTSTRING VarChar(50) -- String
SET     @OUTPUTSTRING = ''

"Scalar_OutputParameter"

BeforeExecute
-- Firebird4 Firebird
DECLARE @RETURN_VALUE Integer(4) -- Int32
SET     @RETURN_VALUE = 0

"Scalar_ReturnParameter"

BeforeExecute
-- Firebird4 Firebird
DECLARE @TSTZ TimeStampTZ(12) -- Object
SET     @TSTZ = 01/01/0001 00:00:00 
DECLARE @TTZ TimeTZ(8) -- Object
SET     @TTZ = 00:00:00 
DECLARE @DECFLOAT16 Dec34(8) -- Object
SET     @DECFLOAT16 = 0E0
DECLARE @DECFLOAT34 Dec34(16) -- Object
SET     @DECFLOAT34 = 0E0
DECLARE @INT_128 Int128(16) -- Object
SET     @INT_128 = 0
DECLARE @COL_TSTZ TimeStampTZ(12) -- Object
SET     @COL_TSTZ = 01/01/0001 00:00:00 
DECLARE @COL_TTZ TimeTZ(8) -- Object
SET     @COL_TTZ = 00:00:00 
DECLARE @COL_DECFLOAT16 Dec34(8) -- Object
SET     @COL_DECFLOAT16 = 0E0
DECLARE @COL_DECFLOAT34 Dec34(16) -- Object
SET     @COL_DECFLOAT34 = 0E0
DECLARE @COL_INT_128 Int128(16) -- Object
SET     @COL_INT_128 = 0

TEST_V4_TYPES

BeforeExecute
-- Firebird4 Firebird
DECLARE @RDB_TIME_ZONE_NAME Char(63) -- String
SET     @RDB_TIME_ZONE_NAME = ''
DECLARE @RDB_FROM_TIMESTAMP TimeStampTZ(12) -- Object
SET     @RDB_FROM_TIMESTAMP = 01/01/0001 00:00:00 
DECLARE @RDB_TO_TIMESTAMP TimeStampTZ(12) -- Object
SET     @RDB_TO_TIMESTAMP = 01/01/0001 00:00:00 
DECLARE @RDB_START_TIMESTAMP TimeStampTZ(12) -- Object
SET     @RDB_START_TIMESTAMP = 01/01/0001 00:00:00 
DECLARE @RDB_END_TIMESTAMP TimeStampTZ(12) -- Object
SET     @RDB_END_TIMESTAMP = 01/01/0001 00:00:00 
DECLARE @RDB_ZONE_OFFSET SmallInt(2) -- Int16
SET     @RDB_ZONE_OFFSET = 0
DECLARE @RDB_DST_OFFSET SmallInt(2) -- Int16
SET     @RDB_DST_OFFSET = 0
DECLARE @RDB_EFFECTIVE_OFFSET SmallInt(2) -- Int16
SET     @RDB_EFFECTIVE_OFFSET = 0

TRANSITIONS

