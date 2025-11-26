-- PostgreSQL.13 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	(VALUES
		('Janet','Janet'), ('Doe','Doe'), ('John','John'),
		('Doe','Doe')
	) n(item, item0)
		INNER JOIN "Person" p ON n.item = p."LastName"

