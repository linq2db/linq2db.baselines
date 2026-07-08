-- PostgreSQL.13 PostgreSQL12

SELECT
	n."Name"
FROM
	"Person" p
		INNER JOIN (VALUES
			('Janet'), ('Doe')
		) n("Name") ON p."LastName" = n."Name"

