BeforeExecute
-- Firebird

CREATE TABLE "FluentMapping"
(
	"RecordID"       Int       NOT NULL,
	"EffectiveStart" TimeStamp NOT NULL,
	"EffectiveEnd"   TimeStamp,
	"Key"            Int       NOT NULL,
	"Unordered1"     Int       NOT NULL,
	"Unordered2"     Int       NOT NULL,
	"Audit1ID"       Int       NOT NULL,
	"Audit2ID"       Int       NOT NULL
)

BeforeExecute
-- Firebird

"AddIssue792Record"

BeforeExecute
-- Firebird
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
-- Firebird
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
-- Firebird
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
-- Firebird
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
-- Firebird
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0

"Person_Delete"

BeforeExecute
-- Firebird
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
-- Firebird
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
-- Firebird
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
-- Firebird
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
-- Firebird
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
-- Firebird
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
-- Firebird
DECLARE @INTFIELD Integer(4) -- Int32
SET     @INTFIELD = 0
DECLARE @STRINGFIELD VarChar(50) -- String
SET     @STRINGFIELD = ''

"Scalar_DataReader"

BeforeExecute
-- Firebird
DECLARE @OUTPUTINT Integer(4) -- Int32
SET     @OUTPUTINT = 0
DECLARE @OUTPUTSTRING VarChar(50) -- String
SET     @OUTPUTSTRING = ''

"Scalar_OutputParameter"

BeforeExecute
-- Firebird
DECLARE @RETURN_VALUE Integer(4) -- Int32
SET     @RETURN_VALUE = 0

"Scalar_ReturnParameter"

BeforeExecute
-- Firebird

DROP TABLE "FluentMapping"

