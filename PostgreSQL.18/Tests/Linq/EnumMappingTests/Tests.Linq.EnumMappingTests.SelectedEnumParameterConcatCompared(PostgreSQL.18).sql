-- PostgreSQL.18 PostgreSQL12
DECLARE @gender Integer -- Int32
SET     @gender = 1

SELECT
	p_2."ID",
	p_2."Gender"
FROM
	(
		SELECT
			:gender::Int as "Gender",
			p."PersonID" as "ID"
		FROM
			"Person" p
		UNION ALL
		SELECT
			:gender::Int as "Gender",
			p_1."PersonID" as "ID"
		FROM
			"Person" p_1
	) p_2
WHERE
	p_2."Gender" = :gender

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

