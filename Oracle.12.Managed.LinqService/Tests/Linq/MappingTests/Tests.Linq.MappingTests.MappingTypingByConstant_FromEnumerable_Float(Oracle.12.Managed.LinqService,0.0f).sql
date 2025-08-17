BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", 0 AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", 3.14748365E+09 AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

