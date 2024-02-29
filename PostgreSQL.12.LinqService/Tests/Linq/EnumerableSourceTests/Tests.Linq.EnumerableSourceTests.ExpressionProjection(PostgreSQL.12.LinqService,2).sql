BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 4

SELECT
	n."FirstName",
	n."PersonID"
FROM
	"Person" p
		INNER JOIN (VALUES
			('Janet',:ID), ('Doe',:ID_1)
		) n("FirstName", "PersonID") ON p."PersonID" = n."PersonID"
ORDER BY
	n."PersonID"

