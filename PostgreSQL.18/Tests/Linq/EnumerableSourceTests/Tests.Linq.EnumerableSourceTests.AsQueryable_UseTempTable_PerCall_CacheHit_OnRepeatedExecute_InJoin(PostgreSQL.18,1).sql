-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 11

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (VALUES
			(:Id), (:Id_1)
		) r("Id") ON p."PersonID" = r."Id"

