-- Oracle.11.Managed Oracle11

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", 1 AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

-- Oracle.11.Managed Oracle11

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", 2147483648 AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

