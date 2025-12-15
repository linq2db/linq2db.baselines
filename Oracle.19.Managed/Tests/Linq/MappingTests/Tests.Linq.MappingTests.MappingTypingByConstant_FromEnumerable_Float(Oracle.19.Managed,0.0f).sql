-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", 0 AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", 3.14748365E+09 AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

