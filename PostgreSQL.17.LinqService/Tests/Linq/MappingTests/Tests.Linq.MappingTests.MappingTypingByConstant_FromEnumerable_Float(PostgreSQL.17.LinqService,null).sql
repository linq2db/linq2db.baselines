BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,NULL::Real)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,3.14748365E+09::Real)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

