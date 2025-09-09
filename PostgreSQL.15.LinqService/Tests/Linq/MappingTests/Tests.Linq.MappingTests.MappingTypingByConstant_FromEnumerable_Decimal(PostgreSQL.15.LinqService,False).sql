BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,1::decimal)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,2147483648.123::decimal)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

