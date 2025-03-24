BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 3

SELECT
	n."PersonID",
	n."FirstName"
FROM
	"Person" t1
		INNER JOIN (VALUES
			(:ID,'Janet'), (:ID_1,'Doe')
		) n("PersonID", "FirstName") ON t1."PersonID" = n."PersonID"
ORDER BY
	n."PersonID"

