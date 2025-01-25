BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 3

SELECT
	n."FirstName",
	n."PersonID"
FROM
	"Person" t1
		INNER JOIN (VALUES
			('Janet',:ID), ('Doe',:ID_1)
		) n("FirstName", "PersonID") ON t1."PersonID" = n."PersonID"
ORDER BY
	n."PersonID"

