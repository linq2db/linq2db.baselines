BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"AllTypes" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

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
				WHERE SCHEMA_NAME IN ('TESTDB')
				UNION ALL
				SELECT
					F.SCHEMA_NAME,
					F.FUNCTION_NAME AS PROCEDURE_NAME,
					1 AS IS_FUNCTION,
					CASE WHEN F.FUNCTION_USAGE_TYPE = 'TABLE' THEN 1 ELSE 0 END AS IS_TABLE_FUNCTION,
					DEFINITION
				FROM FUNCTIONS AS F
				WHERE F.SCHEMA_NAME IN ('TESTDB')

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
				WHERE SCHEMA_NAME IN ('TESTDB')
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
				WHERE NOT (PARAMETER_TYPE = 'RETURN' AND DATA_TYPE_NAME = 'TABLE_TYPE') AND SCHEMA_NAME IN ('TESTDB')
				ORDER BY SCHEMA_NAME, PROCEDURE_NAME, POSITION

BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."AddIssue792Record" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TABLENAME VarChar(50) -- AnsiString
SET     @TABLENAME = ''
DECLARE @CONSTRAINTNAME VarChar(100) -- AnsiString
SET     @CONSTRAINTNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTDB"."DROPCONSTRAINTFROMTABLE" (?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FUNCTIONNAME VarChar(50) -- AnsiString
SET     @FUNCTIONNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTDB"."DROPEXISTINGFUNCTION" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PROCEDURENAME VarChar(50) -- AnsiString
SET     @PROCEDURENAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTDB"."DROPEXISTINGPROCEDURE" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TABLENAME VarChar(50) -- AnsiString
SET     @TABLENAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTDB"."DROPEXISTINGTABLE" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @VIEWNAME VarChar(50) -- AnsiString
SET     @VIEWNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTDB"."DROPEXISTINGVIEW" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."DuplicateColumnNames" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @STR VarChar(50) -- AnsiString
SET     @STR = ''
DECLARE @OUTPUTSTR VarChar(50) -- AnsiString
SET     @OUTPUTSTR = ''
DECLARE @INPUTOUTPUTSTR VarChar(50) -- AnsiString
SET     @INPUTOUTPUTSTR = ''

{ CALL "TESTDB"."OutRefEnumTest" (?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int(10) -- Int32
SET     @ID = 0
DECLARE @OUTPUTID Int(10) -- Int32
SET     @OUTPUTID = 0
DECLARE @INPUTOUTPUTID Int(10) -- Int32
SET     @INPUTOUTPUTID = 0
DECLARE @STR VarChar(50) -- AnsiString
SET     @STR = ''
DECLARE @OUTPUTSTR VarChar(50) -- AnsiString
SET     @OUTPUTSTR = ''
DECLARE @INPUTOUTPUTSTR VarChar(50) -- AnsiString
SET     @INPUTOUTPUTSTR = ''

{ CALL "TESTDB"."OutRefTest" (?,?,?,?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."Patient_SelectAll" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

{ CALL "TESTDB"."Patient_SelectByName" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PERSONID Int(10) -- Int32
SET     @PERSONID = 0

{ CALL "TESTDB"."Person_Delete" (?) }

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

{ CALL "TESTDB"."Person_Insert" (?,?,?,?) }

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
DECLARE @PERSONID Int(10) -- Int32
SET     @PERSONID = 0

{ CALL "TESTDB"."Person_Insert_OutputParameter" (?,?,?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."Person_SelectAll" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int(10) -- Int32
SET     @ID = 0

{ CALL "TESTDB"."Person_SelectByKey" (?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

{ CALL "TESTDB"."Person_SelectByName" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

{ CALL "TESTDB"."Person_SelectListByName" (?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PERSONID Int(10) -- Int32
SET     @PERSONID = 0
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME NVarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- AnsiStringFixedLength
SET     @GENDER = char(0)

{ CALL "TESTDB"."Person_Update" (?,?,?,?,?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."SelectImplicitColumn" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @I Int(10) -- Int32
SET     @I = 0

{ CALL "TESTDB"."TEST_PROCEDURE" (?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."prd.global.ecc/CV_MARAproc" () }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT * FROM "TESTDB"."GetParentByID"(0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT * FROM "TESTDB"."TEST_TABLE_FUNCTION"(0)

BeforeExecute
RollbackTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"AllTypes" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."char20DataType" = 'issue792'

