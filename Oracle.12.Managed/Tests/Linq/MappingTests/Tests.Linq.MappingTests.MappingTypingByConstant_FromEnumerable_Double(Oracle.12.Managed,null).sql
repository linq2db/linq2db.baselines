-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", NULL AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", 3147483648D AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

