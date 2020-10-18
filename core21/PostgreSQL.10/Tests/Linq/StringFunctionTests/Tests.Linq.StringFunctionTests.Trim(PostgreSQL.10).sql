BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	pp."ID",
	pp."Name_1"
FROM
	(
		SELECT
			'  ' || p."FirstName" || ' ' as "Name",
			p."PersonID" as "ID",
			p."FirstName" as "Name_1"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
	) pp
WHERE
	Trim(pp."Name") = 'John'

