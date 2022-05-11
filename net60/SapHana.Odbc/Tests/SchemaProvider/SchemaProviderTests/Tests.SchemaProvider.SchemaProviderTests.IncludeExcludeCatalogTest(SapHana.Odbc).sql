﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_SCHEMA FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT 1 FROM _SYS_BI.BIMC_ALL_CUBES LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					s.SCHEMA_NAME,
					TABLE_NAME,
					COMMENTS,
					IS_TABLE
				FROM
				(
					SELECT
						t.SCHEMA_NAME,
						t.TABLE_NAME,
						t.COMMENTS,
						CAST(1 AS TINYINT) AS IS_TABLE
					FROM SYS.TABLES AS t
					WHERE t.SCHEMA_NAME IN ('TESTDB')
					UNION ALL
					SELECT
						v.SCHEMA_NAME,
						v.VIEW_NAME AS TABLE_NAME,
						v.COMMENTS,
						CAST(0 AS TINYINT) AS IS_TABLE
					FROM
					(
						SELECT *
						FROM SYS.VIEWS AS v
						WHERE v.IS_VALID = 'TRUE'
						AND v.VIEW_TYPE NOT IN ('HIERARCHY', 'CALC')
						AND v.SCHEMA_NAME IN ('TESTDB')
						UNION ALL
						SELECT v.*
						FROM SYS.VIEWS AS v
						JOIN _SYS_BI.BIMC_ALL_CUBES AS c ON c.VIEW_NAME = v.VIEW_NAME
						LEFT JOIN
						(
							SELECT COUNT(p.CUBE_NAME) AS ParamCount, p.CUBE_NAME
							FROM _SYS_BI.BIMC_VARIABLE AS p
							GROUP BY p.CUBE_NAME
						) AS p ON c.CUBE_NAME = p.CUBE_NAME
						WHERE v.VIEW_TYPE = 'CALC' AND v.IS_VALID = 'TRUE' AND p.CUBE_NAME IS NULL AND v.SCHEMA_NAME IN ('TESTDB')
					) AS v
				) AS combined
				JOIN SYS.SCHEMAS AS s ON combined.SCHEMA_NAME = s.SCHEMA_NAME
				WHERE s.HAS_PRIVILEGES = 'TRUE'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					SCHEMA_NAME,
					TABLE_NAME,
					INDEX_NAME,
					CONSTRAINT,
					COLUMN_NAME,
					POSITION
				FROM INDEX_COLUMNS

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					combined.SCHEMA_NAME,
					TABLE_NAME,
					COLUMN_NAME,
					CAST(CASE WHEN IS_NULLABLE = 'TRUE' THEN 1 ELSE 0 END AS TINYINT) AS IS_NULLABLE,
					POSITION,
					DATA_TYPE_NAME,
					LENGTH,
					SCALE,
					COMMENTS,
					CAST(CASE WHEN GENERATION_TYPE = 'BY DEFAULT AS IDENTITY' THEN 1 ELSE 0 END AS TINYINT) AS IS_IDENTITY
				FROM
					(SELECT
						SCHEMA_NAME,
						TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.TABLE_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
					UNION ALL
					SELECT
						SCHEMA_NAME,
						VIEW_NAME  AS TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.VIEW_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
				) AS combined
				JOIN SYS.SCHEMAS AS s ON combined.SCHEMA_NAME = s.SCHEMA_NAME
				WHERE s.HAS_PRIVILEGES = 'TRUE'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					CONSTRAINT_NAME AS "Name",
					SCHEMA_NAME || '.' || TABLE_NAME AS "ThisTableID",
					COLUMN_NAME AS "ThisColumn",
					SCHEMA_NAME || '.' || REFERENCED_TABLE_NAME AS "OtherTableID",
					REFERENCED_COLUMN_NAME AS "OtherColumn",
					POSITION AS "Ordinal"
				FROM REFERENTIAL_CONSTRAINTS
				WHERE SCHEMA_NAME IN ('TESTDB')

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					v.SCHEMA_NAME,
					v.VIEW_NAME AS TABLE_NAME,
					v.COMMENTS
				FROM SYS.VIEWS AS v
				JOIN _SYS_BI.BIMC_ALL_CUBES AS c ON c.VIEW_NAME = v.VIEW_NAME
				JOIN (
					SELECT COUNT(p.CUBE_NAME) AS ParamCount, p.CUBE_NAME
					FROM _SYS_BI.BIMC_VARIABLE AS p
					GROUP BY p.CUBE_NAME
				) AS p ON c.CUBE_NAME = p.CUBE_NAME
				WHERE v.VIEW_TYPE = 'CALC' AND v.IS_VALID = 'TRUE' AND v.SCHEMA_NAME IN ('TESTDB')

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					v.SCHEMA_NAME,
					v.VIEW_NAME,
					p.VARIABLE_NAME,
					p.COLUMN_SQL_TYPE,
					p.MANDATORY,
					p."ORDER"
				FROM SYS.VIEWS AS v
				JOIN _SYS_BI.BIMC_ALL_CUBES AS c ON c.VIEW_NAME = v.VIEW_NAME
				JOIN _SYS_BI.BIMC_VARIABLE AS p ON c.CUBE_NAME = p.CUBE_NAME
				WHERE c.CATALOG_NAME = p.CATALOG_NAME AND v.VIEW_TYPE = 'CALC' AND v.SCHEMA_NAME IN ('TESTDB')
				ORDER BY v.VIEW_NAME, p."ORDER"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					combined.SCHEMA_NAME,
					TABLE_NAME,
					COLUMN_NAME,
					CAST(CASE WHEN IS_NULLABLE = 'TRUE' THEN 1 ELSE 0 END AS TINYINT) AS IS_NULLABLE,
					POSITION,
					DATA_TYPE_NAME,
					LENGTH,
					SCALE,
					COMMENTS,
					CAST(CASE WHEN GENERATION_TYPE = 'BY DEFAULT AS IDENTITY' THEN 1 ELSE 0 END AS TINYINT) AS IS_IDENTITY
				FROM
					(SELECT
						SCHEMA_NAME,
						TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.TABLE_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
					UNION ALL
					SELECT
						SCHEMA_NAME,
						VIEW_NAME  AS TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.VIEW_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
				) AS combined
				JOIN SYS.SCHEMAS AS s ON combined.SCHEMA_NAME = s.SCHEMA_NAME
				WHERE s.HAS_PRIVILEGES = 'TRUE'

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
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."AddIssue792Record" () }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
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
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FUNCTIONNAME VarChar(50) -- AnsiString
SET     @FUNCTIONNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTDB"."DROPEXISTINGFUNCTION" (?,?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PROCEDURENAME VarChar(50) -- AnsiString
SET     @PROCEDURENAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTDB"."DROPEXISTINGPROCEDURE" (?,?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TABLENAME VarChar(50) -- AnsiString
SET     @TABLENAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTDB"."DROPEXISTINGTABLE" (?,?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @VIEWNAME VarChar(50) -- AnsiString
SET     @VIEWNAME = ''
DECLARE @SCHEMANAME VarChar(50) -- AnsiString
SET     @SCHEMANAME = ''

{ CALL "TESTDB"."DROPEXISTINGVIEW" (?,?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."DuplicateColumnNames" () }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
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
RollbackTransaction
BeforeExecute
BeginTransaction
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

{ CALL "TESTDB"."OutRefTest" (?,?,?,?,?,?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."Patient_SelectAll" () }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

{ CALL "TESTDB"."Patient_SelectByName" (?,?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PERSONID  -- Int32
SET     @PERSONID = 0

{ CALL "TESTDB"."Person_Delete" (?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
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
RollbackTransaction
BeforeExecute
BeginTransaction
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

{ CALL "TESTDB"."Person_Insert_OutputParameter" (?,?,?,?,?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."Person_SelectAll" () }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 0

{ CALL "TESTDB"."Person_SelectByKey" (?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

{ CALL "TESTDB"."Person_SelectByName" (?,?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FIRSTNAME NVarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME NVarChar(50) -- String
SET     @LASTNAME = ''

{ CALL "TESTDB"."Person_SelectListByName" (?,?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
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

{ CALL "TESTDB"."Person_Update" (?,?,?,?,?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."SelectImplicitColumn" () }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @I  -- Int32
SET     @I = 0

{ CALL "TESTDB"."TEST_PROCEDURE" (?) }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

{ CALL "TESTDB"."prd.global.ecc/CV_MARAproc" () }

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT * FROM "TESTDB"."GetParentByID"(0)

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT * FROM "TESTDB"."TEST_TABLE_FUNCTION"(0)

BeforeExecute
RollbackTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_SCHEMA FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT 1 FROM _SYS_BI.BIMC_ALL_CUBES LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					s.SCHEMA_NAME,
					TABLE_NAME,
					COMMENTS,
					IS_TABLE
				FROM
				(
					SELECT
						t.SCHEMA_NAME,
						t.TABLE_NAME,
						t.COMMENTS,
						CAST(1 AS TINYINT) AS IS_TABLE
					FROM SYS.TABLES AS t
					WHERE t.SCHEMA_NAME IN ('TESTDB')
					UNION ALL
					SELECT
						v.SCHEMA_NAME,
						v.VIEW_NAME AS TABLE_NAME,
						v.COMMENTS,
						CAST(0 AS TINYINT) AS IS_TABLE
					FROM
					(
						SELECT *
						FROM SYS.VIEWS AS v
						WHERE v.IS_VALID = 'TRUE'
						AND v.VIEW_TYPE NOT IN ('HIERARCHY', 'CALC')
						AND v.SCHEMA_NAME IN ('TESTDB')
						UNION ALL
						SELECT v.*
						FROM SYS.VIEWS AS v
						JOIN _SYS_BI.BIMC_ALL_CUBES AS c ON c.VIEW_NAME = v.VIEW_NAME
						LEFT JOIN
						(
							SELECT COUNT(p.CUBE_NAME) AS ParamCount, p.CUBE_NAME
							FROM _SYS_BI.BIMC_VARIABLE AS p
							GROUP BY p.CUBE_NAME
						) AS p ON c.CUBE_NAME = p.CUBE_NAME
						WHERE v.VIEW_TYPE = 'CALC' AND v.IS_VALID = 'TRUE' AND p.CUBE_NAME IS NULL AND v.SCHEMA_NAME IN ('TESTDB')
					) AS v
				) AS combined
				JOIN SYS.SCHEMAS AS s ON combined.SCHEMA_NAME = s.SCHEMA_NAME
				WHERE s.HAS_PRIVILEGES = 'TRUE'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					SCHEMA_NAME,
					TABLE_NAME,
					INDEX_NAME,
					CONSTRAINT,
					COLUMN_NAME,
					POSITION
				FROM INDEX_COLUMNS

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					combined.SCHEMA_NAME,
					TABLE_NAME,
					COLUMN_NAME,
					CAST(CASE WHEN IS_NULLABLE = 'TRUE' THEN 1 ELSE 0 END AS TINYINT) AS IS_NULLABLE,
					POSITION,
					DATA_TYPE_NAME,
					LENGTH,
					SCALE,
					COMMENTS,
					CAST(CASE WHEN GENERATION_TYPE = 'BY DEFAULT AS IDENTITY' THEN 1 ELSE 0 END AS TINYINT) AS IS_IDENTITY
				FROM
					(SELECT
						SCHEMA_NAME,
						TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.TABLE_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
					UNION ALL
					SELECT
						SCHEMA_NAME,
						VIEW_NAME  AS TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.VIEW_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
				) AS combined
				JOIN SYS.SCHEMAS AS s ON combined.SCHEMA_NAME = s.SCHEMA_NAME
				WHERE s.HAS_PRIVILEGES = 'TRUE'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					CONSTRAINT_NAME AS "Name",
					SCHEMA_NAME || '.' || TABLE_NAME AS "ThisTableID",
					COLUMN_NAME AS "ThisColumn",
					SCHEMA_NAME || '.' || REFERENCED_TABLE_NAME AS "OtherTableID",
					REFERENCED_COLUMN_NAME AS "OtherColumn",
					POSITION AS "Ordinal"
				FROM REFERENTIAL_CONSTRAINTS
				WHERE SCHEMA_NAME IN ('TESTDB')

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					v.SCHEMA_NAME,
					v.VIEW_NAME AS TABLE_NAME,
					v.COMMENTS
				FROM SYS.VIEWS AS v
				JOIN _SYS_BI.BIMC_ALL_CUBES AS c ON c.VIEW_NAME = v.VIEW_NAME
				JOIN (
					SELECT COUNT(p.CUBE_NAME) AS ParamCount, p.CUBE_NAME
					FROM _SYS_BI.BIMC_VARIABLE AS p
					GROUP BY p.CUBE_NAME
				) AS p ON c.CUBE_NAME = p.CUBE_NAME
				WHERE v.VIEW_TYPE = 'CALC' AND v.IS_VALID = 'TRUE' AND v.SCHEMA_NAME IN ('TESTDB')

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					v.SCHEMA_NAME,
					v.VIEW_NAME,
					p.VARIABLE_NAME,
					p.COLUMN_SQL_TYPE,
					p.MANDATORY,
					p."ORDER"
				FROM SYS.VIEWS AS v
				JOIN _SYS_BI.BIMC_ALL_CUBES AS c ON c.VIEW_NAME = v.VIEW_NAME
				JOIN _SYS_BI.BIMC_VARIABLE AS p ON c.CUBE_NAME = p.CUBE_NAME
				WHERE c.CATALOG_NAME = p.CATALOG_NAME AND v.VIEW_TYPE = 'CALC' AND v.SCHEMA_NAME IN ('TESTDB')
				ORDER BY v.VIEW_NAME, p."ORDER"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					combined.SCHEMA_NAME,
					TABLE_NAME,
					COLUMN_NAME,
					CAST(CASE WHEN IS_NULLABLE = 'TRUE' THEN 1 ELSE 0 END AS TINYINT) AS IS_NULLABLE,
					POSITION,
					DATA_TYPE_NAME,
					LENGTH,
					SCALE,
					COMMENTS,
					CAST(CASE WHEN GENERATION_TYPE = 'BY DEFAULT AS IDENTITY' THEN 1 ELSE 0 END AS TINYINT) AS IS_IDENTITY
				FROM
					(SELECT
						SCHEMA_NAME,
						TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.TABLE_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
					UNION ALL
					SELECT
						SCHEMA_NAME,
						VIEW_NAME  AS TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.VIEW_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
				) AS combined
				JOIN SYS.SCHEMAS AS s ON combined.SCHEMA_NAME = s.SCHEMA_NAME
				WHERE s.HAS_PRIVILEGES = 'TRUE'

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
RollbackTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_SCHEMA FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT 1 FROM _SYS_BI.BIMC_ALL_CUBES LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					s.SCHEMA_NAME,
					TABLE_NAME,
					COMMENTS,
					IS_TABLE
				FROM
				(
					SELECT
						t.SCHEMA_NAME,
						t.TABLE_NAME,
						t.COMMENTS,
						CAST(1 AS TINYINT) AS IS_TABLE
					FROM SYS.TABLES AS t
					WHERE t.SCHEMA_NAME IN ('TESTDB')
					UNION ALL
					SELECT
						v.SCHEMA_NAME,
						v.VIEW_NAME AS TABLE_NAME,
						v.COMMENTS,
						CAST(0 AS TINYINT) AS IS_TABLE
					FROM
					(
						SELECT *
						FROM SYS.VIEWS AS v
						WHERE v.IS_VALID = 'TRUE'
						AND v.VIEW_TYPE NOT IN ('HIERARCHY', 'CALC')
						AND v.SCHEMA_NAME IN ('TESTDB')
						UNION ALL
						SELECT v.*
						FROM SYS.VIEWS AS v
						JOIN _SYS_BI.BIMC_ALL_CUBES AS c ON c.VIEW_NAME = v.VIEW_NAME
						LEFT JOIN
						(
							SELECT COUNT(p.CUBE_NAME) AS ParamCount, p.CUBE_NAME
							FROM _SYS_BI.BIMC_VARIABLE AS p
							GROUP BY p.CUBE_NAME
						) AS p ON c.CUBE_NAME = p.CUBE_NAME
						WHERE v.VIEW_TYPE = 'CALC' AND v.IS_VALID = 'TRUE' AND p.CUBE_NAME IS NULL AND v.SCHEMA_NAME IN ('TESTDB')
					) AS v
				) AS combined
				JOIN SYS.SCHEMAS AS s ON combined.SCHEMA_NAME = s.SCHEMA_NAME
				WHERE s.HAS_PRIVILEGES = 'TRUE'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					SCHEMA_NAME,
					TABLE_NAME,
					INDEX_NAME,
					CONSTRAINT,
					COLUMN_NAME,
					POSITION
				FROM INDEX_COLUMNS

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					combined.SCHEMA_NAME,
					TABLE_NAME,
					COLUMN_NAME,
					CAST(CASE WHEN IS_NULLABLE = 'TRUE' THEN 1 ELSE 0 END AS TINYINT) AS IS_NULLABLE,
					POSITION,
					DATA_TYPE_NAME,
					LENGTH,
					SCALE,
					COMMENTS,
					CAST(CASE WHEN GENERATION_TYPE = 'BY DEFAULT AS IDENTITY' THEN 1 ELSE 0 END AS TINYINT) AS IS_IDENTITY
				FROM
					(SELECT
						SCHEMA_NAME,
						TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.TABLE_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
					UNION ALL
					SELECT
						SCHEMA_NAME,
						VIEW_NAME  AS TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.VIEW_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
				) AS combined
				JOIN SYS.SCHEMAS AS s ON combined.SCHEMA_NAME = s.SCHEMA_NAME
				WHERE s.HAS_PRIVILEGES = 'TRUE'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					CONSTRAINT_NAME AS "Name",
					SCHEMA_NAME || '.' || TABLE_NAME AS "ThisTableID",
					COLUMN_NAME AS "ThisColumn",
					SCHEMA_NAME || '.' || REFERENCED_TABLE_NAME AS "OtherTableID",
					REFERENCED_COLUMN_NAME AS "OtherColumn",
					POSITION AS "Ordinal"
				FROM REFERENTIAL_CONSTRAINTS
				WHERE SCHEMA_NAME IN ('TESTDB')

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					v.SCHEMA_NAME,
					v.VIEW_NAME AS TABLE_NAME,
					v.COMMENTS
				FROM SYS.VIEWS AS v
				JOIN _SYS_BI.BIMC_ALL_CUBES AS c ON c.VIEW_NAME = v.VIEW_NAME
				JOIN (
					SELECT COUNT(p.CUBE_NAME) AS ParamCount, p.CUBE_NAME
					FROM _SYS_BI.BIMC_VARIABLE AS p
					GROUP BY p.CUBE_NAME
				) AS p ON c.CUBE_NAME = p.CUBE_NAME
				WHERE v.VIEW_TYPE = 'CALC' AND v.IS_VALID = 'TRUE' AND v.SCHEMA_NAME IN ('TESTDB')

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					v.SCHEMA_NAME,
					v.VIEW_NAME,
					p.VARIABLE_NAME,
					p.COLUMN_SQL_TYPE,
					p.MANDATORY,
					p."ORDER"
				FROM SYS.VIEWS AS v
				JOIN _SYS_BI.BIMC_ALL_CUBES AS c ON c.VIEW_NAME = v.VIEW_NAME
				JOIN _SYS_BI.BIMC_VARIABLE AS p ON c.CUBE_NAME = p.CUBE_NAME
				WHERE c.CATALOG_NAME = p.CATALOG_NAME AND v.VIEW_TYPE = 'CALC' AND v.SCHEMA_NAME IN ('TESTDB')
				ORDER BY v.VIEW_NAME, p."ORDER"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc


				SELECT
					combined.SCHEMA_NAME,
					TABLE_NAME,
					COLUMN_NAME,
					CAST(CASE WHEN IS_NULLABLE = 'TRUE' THEN 1 ELSE 0 END AS TINYINT) AS IS_NULLABLE,
					POSITION,
					DATA_TYPE_NAME,
					LENGTH,
					SCALE,
					COMMENTS,
					CAST(CASE WHEN GENERATION_TYPE = 'BY DEFAULT AS IDENTITY' THEN 1 ELSE 0 END AS TINYINT) AS IS_IDENTITY
				FROM
					(SELECT
						SCHEMA_NAME,
						TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.TABLE_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
					UNION ALL
					SELECT
						SCHEMA_NAME,
						VIEW_NAME  AS TABLE_NAME,
						COLUMN_NAME,
						IS_NULLABLE,
						POSITION,
						DATA_TYPE_NAME,
						LENGTH,
						SCALE,
						COMMENTS,
						GENERATION_TYPE
					FROM SYS.VIEW_COLUMNS
					WHERE SCHEMA_NAME IN ('TESTDB')
				) AS combined
				JOIN SYS.SCHEMAS AS s ON combined.SCHEMA_NAME = s.SCHEMA_NAME
				WHERE s.HAS_PRIVILEGES = 'TRUE'

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
RollbackTransaction
