-- PostgreSQL.19 PostgreSQL12
SELECT
	c_1."Id"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	k_1.item,
	d_1."Id",
	d_1."Name"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN LATERAL (
			SELECT
				d."Id",
				d."Name"
			FROM
				"Department" d
			WHERE
				k_1.item = d."CompanyId"
			ORDER BY
				d."Id"
			LIMIT 2 OFFSET 1 
		) d_1 ON 1=1

