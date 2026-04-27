-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 21
DECLARE @Id_2 Integer -- Int32
SET     @Id_2 = 22

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (VALUES
			(:Id), (:Id_1), (:Id_2)
		) r("Id") ON r."Id" = p."PersonID"

