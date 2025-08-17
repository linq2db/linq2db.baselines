BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,1::BigInt)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,2147483648::BigInt)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

