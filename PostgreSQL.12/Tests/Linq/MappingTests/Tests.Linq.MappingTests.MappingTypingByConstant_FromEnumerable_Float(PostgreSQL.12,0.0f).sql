-- PostgreSQL.12 PostgreSQL12
SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,0::Real)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

-- PostgreSQL.12 PostgreSQL12
SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,3.14748365E+09::Real)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

