﻿BeforeExecute
BeginTransaction
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
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"AllTypes" "t1"

BeforeExecute
DisposeTransaction
