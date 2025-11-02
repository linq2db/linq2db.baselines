-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,NULL::Float)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,3147483648::Float)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

