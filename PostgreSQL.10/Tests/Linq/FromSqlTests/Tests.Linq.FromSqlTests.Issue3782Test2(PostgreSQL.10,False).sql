-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(6) -- String
SET     @p = 'Person'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				
					SELECT CASE
						WHEN EXISTS (
							SELECT 1
							FROM information_schema.tables
							WHERE table_name = :p
						)
						THEN true
						ELSE false
					END AS result
			) t1(value)
	)

