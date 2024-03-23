BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	n."Name"
FROM
	"Person" p
		INNER JOIN LATERAL (VALUES
			(1,'Janet',p."LastName"), (1,'Doe',p."LastName")
		) n("ID", "Name", "Sub") ON p."LastName" = n."Name"

