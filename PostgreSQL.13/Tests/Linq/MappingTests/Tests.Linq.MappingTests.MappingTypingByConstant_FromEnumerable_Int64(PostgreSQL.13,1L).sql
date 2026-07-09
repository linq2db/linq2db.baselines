-- PostgreSQL.13 PostgreSQL12

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,1::BigInt)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

-- PostgreSQL.13 PostgreSQL12

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,2147483648::BigInt)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

