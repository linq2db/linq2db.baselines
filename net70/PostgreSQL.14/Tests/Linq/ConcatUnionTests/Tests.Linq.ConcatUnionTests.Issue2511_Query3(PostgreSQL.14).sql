BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."FirstName",
	t1."ID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	(
		SELECT
			p."FirstName",
			p."PersonID" as "ID",
			p."LastName",
			p."MiddleName",
			p."Gender"
		FROM
			"Person" p
		LIMIT :take
	) t1
UNION ALL
SELECT
	t2."FirstName",
	t2."PersonID",
	t2."LastName",
	t2."MiddleName",
	t2."Gender"
FROM
	"Person" t2

