BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"AllTypes" "t1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	current_schema
FROM
	"LinqDataTypes" "_"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

SELECT CURRENT_SCHEMA FROM DUMMY

BeforeExecute
-- SapHana.Native SapHana

SELECT 1 FROM _SYS_BI.BIMC_ALL_CUBES LIMIT 1

BeforeExecute
-- SapHana.Native SapHana


				SELECT
					SCHEMA_NAME,
					PROCEDURE_NAME,
					0 AS IS_FUNCTION,
					0 AS IS_TABLE_FUNCTION,
					DEFINITION
				FROM PROCEDURES
				WHERE SCHEMA_NAME IN ('TESTHANA')
				UNION ALL
				SELECT
					F.SCHEMA_NAME,
					F.FUNCTION_NAME AS PROCEDURE_NAME,
					1 AS IS_FUNCTION,
					CASE WHEN FP.DATA_TYPE_NAME = 'TABLE_TYPE' THEN 1 ELSE 0 END AS IS_TABLE_FUNCTION,
					DEFINITION
				FROM FUNCTIONS AS F
				JOIN FUNCTION_PARAMETERS AS FP ON F.FUNCTION_OID = FP.FUNCTION_OID
				WHERE FP.PARAMETER_TYPE = 'RETURN' AND F.SCHEMA_NAME IN ('TESTHANA')

BeforeExecute
-- SapHana.Native SapHana


				SELECT
					SCHEMA_NAME,
					PROCEDURE_NAME,
					PARAMETER_NAME,
					DATA_TYPE_NAME,
					POSITION,
					PARAMETER_TYPE,
					0 AS IS_RESULT,
					LENGTH,
					SCALE,
					IS_NULLABLE
				FROM PROCEDURE_PARAMETERS
				WHERE SCHEMA_NAME IN ('TESTHANA')
				UNION ALL
				SELECT
					SCHEMA_NAME,
					FUNCTION_NAME AS PROCEDURE_NAME,
					PARAMETER_NAME,
					DATA_TYPE_NAME,
					POSITION,
					PARAMETER_TYPE,
					CASE WHEN PARAMETER_TYPE = 'RETURN' THEN 1 ELSE 0 END AS IS_RESULT,
					LENGTH,
					SCALE,
					IS_NULLABLE
				FROM FUNCTION_PARAMETERS
				WHERE NOT (PARAMETER_TYPE = 'RETURN' AND DATA_TYPE_NAME = 'TABLE_TYPE') AND SCHEMA_NAME IN ('TESTHANA')
				ORDER BY SCHEMA_NAME, PROCEDURE_NAME, POSITION

BeforeExecute
-- SapHana.Native SapHana

"TESTHANA"."AddIssue792Record"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @TABLENAME VarChar(50) -- AnsiString
SET     @TABLENAME = ''
DECLARE @CONSTRAINTNAME VarChar(100) -- AnsiString
SET     @CONSTRAINTNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

"TESTHANA"."DROPCONSTRAINTFROMTABLE"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FUNCTIONNAME VarChar(50) -- AnsiString
SET     @FUNCTIONNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

"TESTHANA"."DROPEXISTINGFUNCTION"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @PROCEDURENAME VarChar(50) -- AnsiString
SET     @PROCEDURENAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

"TESTHANA"."DROPEXISTINGPROCEDURE"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @TABLENAME VarChar(50) -- AnsiString
SET     @TABLENAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

"TESTHANA"."DROPEXISTINGTABLE"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @VIEWNAME VarChar(50) -- AnsiString
SET     @VIEWNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

"TESTHANA"."DROPEXISTINGVIEW"

BeforeExecute
-- SapHana.Native SapHana

"TESTHANA"."DuplicateColumnNames"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @STR VarChar(50) -- AnsiString
SET     @STR = ''
DECLARE @OUTPUTSTR VarChar(50) -- AnsiString
SET     @OUTPUTSTR = ''
DECLARE @INPUTOUTPUTSTR VarChar(50) -- AnsiString
SET     @INPUTOUTPUTSTR = ''

"TESTHANA"."OutRefEnumTest"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @OUTPUTID  -- Int32
SET     @OUTPUTID = 0
DECLARE @INPUTOUTPUTID  -- Int32
SET     @INPUTOUTPUTID = 0
DECLARE @STR VarChar(50) -- AnsiString
SET     @STR = ''
DECLARE @OUTPUTSTR VarChar(50) -- AnsiString
SET     @OUTPUTSTR = ''
DECLARE @INPUTOUTPUTSTR VarChar(50) -- AnsiString
SET     @INPUTOUTPUTSTR = ''

"TESTHANA"."OutRefTest"

BeforeExecute
-- SapHana.Native SapHana

"TESTHANA"."Patient_SelectAll"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

"TESTHANA"."Patient_SelectByName"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @PERSONID  -- Int32
SET     @PERSONID = 0

"TESTHANA"."Person_Delete"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME NVarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- AnsiStringFixedLength
SET     @GENDER = char(0)

"TESTHANA"."Person_Insert"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME NVarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- AnsiStringFixedLength
SET     @GENDER = char(0)
DECLARE @PERSONID  -- Int32
SET     @PERSONID = 0

"TESTHANA"."Person_Insert_OutputParameter"

BeforeExecute
-- SapHana.Native SapHana

"TESTHANA"."Person_SelectAll"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 0

"TESTHANA"."Person_SelectByKey"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

"TESTHANA"."Person_SelectByName"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

"TESTHANA"."Person_SelectListByName"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @PERSONID  -- Int32
SET     @PERSONID = 0
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME NVarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- AnsiStringFixedLength
SET     @GENDER = char(0)

"TESTHANA"."Person_Update"

BeforeExecute
-- SapHana.Native SapHana

"TESTHANA"."SelectImplicitColumn"

BeforeExecute
-- SapHana.Native SapHana

"TESTHANA"."prd.global.ecc/CV_MARAproc"

BeforeExecute
-- SapHana.Native SapHana

SELECT * FROM "TESTHANA"."GetParentByID"(0)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"AllTypes" "t1"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."char20DataType" = 'issue792'

