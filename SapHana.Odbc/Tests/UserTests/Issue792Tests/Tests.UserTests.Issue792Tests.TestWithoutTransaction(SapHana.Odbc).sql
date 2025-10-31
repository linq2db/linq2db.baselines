-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"AllTypes" "t1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_SCHEMA FROM DUMMY

-- SapHana.Odbc SapHanaOdbc

SELECT 1 FROM _SYS_BI.BIMC_ALL_CUBES LIMIT 1

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

-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."AddIssue792Record" () }

-- SapHana.Odbc SapHanaOdbc
DECLARE @TABLENAME VarChar(50) -- AnsiString
SET     @TABLENAME = NULL
DECLARE @CONSTRAINTNAME VarChar(100) -- AnsiString
SET     @CONSTRAINTNAME = NULL
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = NULL

{ CALL "TESTDB"."DROPCONSTRAINTFROMTABLE" (?,?,?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @FUNCTIONNAME VarChar(50) -- AnsiString
SET     @FUNCTIONNAME = NULL
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = NULL

{ CALL "TESTDB"."DROPEXISTINGFUNCTION" (?,?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @PROCEDURENAME VarChar(50) -- AnsiString
SET     @PROCEDURENAME = NULL
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = NULL

{ CALL "TESTDB"."DROPEXISTINGPROCEDURE" (?,?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @TABLENAME VarChar(50) -- AnsiString
SET     @TABLENAME = NULL
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = NULL

{ CALL "TESTDB"."DROPEXISTINGTABLE" (?,?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @VIEWNAME VarChar(50) -- AnsiString
SET     @VIEWNAME = NULL
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = NULL

{ CALL "TESTDB"."DROPEXISTINGVIEW" (?,?) }

-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."DuplicateColumnNames" () }

-- SapHana.Odbc SapHanaOdbc
DECLARE @STR VarChar(50) -- AnsiString
SET     @STR = NULL
DECLARE @OUTPUTSTR VarChar(50) -- AnsiString
SET     @OUTPUTSTR = NULL
DECLARE @INPUTOUTPUTSTR VarChar(50) -- AnsiString
SET     @INPUTOUTPUTSTR = NULL

{ CALL "TESTDB"."OutRefEnumTest" (?,?,?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int(10) -- Int32
SET     @ID = NULL
DECLARE @OUTPUTID Int(10) -- Int32
SET     @OUTPUTID = NULL
DECLARE @INPUTOUTPUTID Int(10) -- Int32
SET     @INPUTOUTPUTID = NULL
DECLARE @STR VarChar(50) -- AnsiString
SET     @STR = NULL
DECLARE @OUTPUTSTR VarChar(50) -- AnsiString
SET     @OUTPUTSTR = NULL
DECLARE @INPUTOUTPUTSTR VarChar(50) -- AnsiString
SET     @INPUTOUTPUTSTR = NULL

{ CALL "TESTDB"."OutRefTest" (?,?,?,?,?,?) }

-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."Patient_SelectAll" () }

-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = NULL
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = NULL

{ CALL "TESTDB"."Patient_SelectByName" (?,?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @PERSONID Int(10) -- Int32
SET     @PERSONID = NULL

{ CALL "TESTDB"."Person_Delete" (?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = NULL
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = NULL
DECLARE @MIDDLENAME NVarChar(50) -- String
SET     @MIDDLENAME = NULL
DECLARE @GENDER Char(1) -- AnsiStringFixedLength
SET     @GENDER = NULL

{ CALL "TESTDB"."Person_Insert" (?,?,?,?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = NULL
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = NULL
DECLARE @MIDDLENAME NVarChar(50) -- String
SET     @MIDDLENAME = NULL
DECLARE @GENDER Char(1) -- AnsiStringFixedLength
SET     @GENDER = NULL
DECLARE @PERSONID Int(10) -- Int32
SET     @PERSONID = NULL

{ CALL "TESTDB"."Person_Insert_OutputParameter" (?,?,?,?,?) }

-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."Person_SelectAll" () }

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int(10) -- Int32
SET     @ID = NULL

{ CALL "TESTDB"."Person_SelectByKey" (?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = NULL
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = NULL

{ CALL "TESTDB"."Person_SelectByName" (?,?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = NULL
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = NULL

{ CALL "TESTDB"."Person_SelectListByName" (?,?) }

-- SapHana.Odbc SapHanaOdbc
DECLARE @PERSONID Int(10) -- Int32
SET     @PERSONID = NULL
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = NULL
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = NULL
DECLARE @MIDDLENAME NVarChar(50) -- String
SET     @MIDDLENAME = NULL
DECLARE @GENDER Char(1) -- AnsiStringFixedLength
SET     @GENDER = NULL

{ CALL "TESTDB"."Person_Update" (?,?,?,?,?) }

-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."SelectImplicitColumn" () }

-- SapHana.Odbc SapHanaOdbc
DECLARE @I Int(10) -- Int32
SET     @I = NULL

{ CALL "TESTDB"."TEST_PROCEDURE" (?) }

-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."prd.global.ecc/CV_MARAproc" () }

-- SapHana.Odbc SapHanaOdbc

SELECT * FROM "TESTDB"."GetParentByID"('')

-- SapHana.Odbc SapHanaOdbc

SELECT * FROM "TESTDB"."TEST_TABLE_FUNCTION"('')

RollbackTransaction
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"AllTypes" "t1"

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."char20DataType" = 'issue792'

