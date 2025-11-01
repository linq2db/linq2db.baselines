-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	n."Name"
FROM
	"Person" p
		INNER JOIN (VALUES
			('Janet'), ('Doe')
		) n("Name") ON p."LastName" = n."Name"

