BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", 0D AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", 3147483648D AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

