BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,0::Float)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,3147483648::Float)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

