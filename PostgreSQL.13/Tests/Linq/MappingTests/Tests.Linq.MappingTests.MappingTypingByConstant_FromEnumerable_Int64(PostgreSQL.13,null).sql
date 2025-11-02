-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,NULL::BigInt)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,2147483648::BigInt)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

