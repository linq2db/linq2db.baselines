BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	(VALUES
		('Janet'), ('Doe'), ('John'), ('Doe')
	) n(item)
		INNER JOIN "Person" p ON n.item = p."LastName"

