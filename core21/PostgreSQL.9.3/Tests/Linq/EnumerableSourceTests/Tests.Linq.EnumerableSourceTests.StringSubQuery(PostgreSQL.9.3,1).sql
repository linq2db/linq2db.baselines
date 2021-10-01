BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t."FirstName",
	t."PersonID",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(VALUES
				('j'), ('o'), ('h'), ('n')
			) t1(item)
		WHERE
			Position(t1.item in t."FirstName") - 1 > 0
	)

