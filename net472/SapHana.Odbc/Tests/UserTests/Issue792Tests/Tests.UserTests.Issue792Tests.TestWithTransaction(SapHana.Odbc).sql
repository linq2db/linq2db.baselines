BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"AllTypes" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	current_schema
FROM
	"LinqDataTypes" "_"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_SCHEMA FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT 1 FROM _SYS_BI.BIMC_ALL_CUBES LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					SCHEMA_NAME,
					PROCEDURE_NAME,
					0 AS IS_FUNCTION,
					0 AS IS_TABLE_FUNCTION,
					DEFINITION
				FROM PROCEDURES
				WHERE SCHEMA_NAME IN ('TESTHANAODBC')
				UNION ALL
				SELECT
					F.SCHEMA_NAME,
					F.FUNCTION_NAME AS PROCEDURE_NAME,
					1 AS IS_FUNCTION,
					CASE WHEN FP.DATA_TYPE_NAME = 'TABLE_TYPE' THEN 1 ELSE 0 END AS IS_TABLE_FUNCTION,
					DEFINITION
				FROM FUNCTIONS AS F
				JOIN FUNCTION_PARAMETERS AS FP ON F.FUNCTION_OID = FP.FUNCTION_OID
				WHERE FP.PARAMETER_TYPE = 'RETURN' AND F.SCHEMA_NAME IN ('TESTHANAODBC')

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


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
				WHERE SCHEMA_NAME IN ('TESTHANAODBC')
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
				WHERE NOT (PARAMETER_TYPE = 'RETURN' AND DATA_TYPE_NAME = 'TABLE_TYPE') AND SCHEMA_NAME IN ('TESTHANAODBC')
				ORDER BY SCHEMA_NAME, PROCEDURE_NAME, POSITION

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTHANAODBC"."AddIssue792Record" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TABLENAME VarChar(50) -- AnsiString
SET     @TABLENAME = ''
DECLARE @CONSTRAINTNAME VarChar(100) -- AnsiString
SET     @CONSTRAINTNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTHANAODBC"."DROPCONSTRAINTFROMTABLE" (?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FUNCTIONNAME VarChar(50) -- AnsiString
SET     @FUNCTIONNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTHANAODBC"."DROPEXISTINGFUNCTION" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PROCEDURENAME VarChar(50) -- AnsiString
SET     @PROCEDURENAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTHANAODBC"."DROPEXISTINGPROCEDURE" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TABLENAME VarChar(50) -- AnsiString
SET     @TABLENAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTHANAODBC"."DROPEXISTINGTABLE" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @VIEWNAME VarChar(50) -- AnsiString
SET     @VIEWNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTHANAODBC"."DROPEXISTINGVIEW" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTHANAODBC"."DuplicateColumnNames" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @STR VarChar(50) -- AnsiString
SET     @STR = ''
DECLARE @OUTPUTSTR VarChar(50) -- AnsiString
SET     @OUTPUTSTR = ''
DECLARE @INPUTOUTPUTSTR VarChar(50) -- AnsiString
SET     @INPUTOUTPUTSTR = ''

{ CALL "TESTHANAODBC"."OutRefEnumTest" (?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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

{ CALL "TESTHANAODBC"."OutRefTest" (?,?,?,?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTHANAODBC"."Patient_SelectAll" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

{ CALL "TESTHANAODBC"."Patient_SelectByName" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PERSONID  -- Int32
SET     @PERSONID = 0

{ CALL "TESTHANAODBC"."Person_Delete" (?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME NVarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- AnsiStringFixedLength
SET     @GENDER = char(0)

{ CALL "TESTHANAODBC"."Person_Insert" (?,?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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

{ CALL "TESTHANAODBC"."Person_Insert_OutputParameter" (?,?,?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTHANAODBC"."Person_SelectAll" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 0

{ CALL "TESTHANAODBC"."Person_SelectByKey" (?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

{ CALL "TESTHANAODBC"."Person_SelectByName" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

{ CALL "TESTHANAODBC"."Person_SelectListByName" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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

{ CALL "TESTHANAODBC"."Person_Update" (?,?,?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTHANAODBC"."SelectImplicitColumn" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTHANAODBC"."prd.global.ecc/CV_MARAproc" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT * FROM "TESTHANAODBC"."GetParentByID"(0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"AllTypes" "t1"

