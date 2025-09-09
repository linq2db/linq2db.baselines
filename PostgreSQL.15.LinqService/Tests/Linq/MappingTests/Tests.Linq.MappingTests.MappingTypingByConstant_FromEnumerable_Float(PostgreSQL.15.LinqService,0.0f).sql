BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,0::Real)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,3.14748365E+09::Real)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

