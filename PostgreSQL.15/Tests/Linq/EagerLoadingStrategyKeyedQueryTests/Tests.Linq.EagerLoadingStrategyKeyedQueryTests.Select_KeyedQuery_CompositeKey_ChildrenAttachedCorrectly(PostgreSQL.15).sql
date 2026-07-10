-- PostgreSQL.15 PostgreSQL12
SELECT
	p."Region",
	p."Code",
	p."Name"
FROM
	"CompositeParent" p
ORDER BY
	p."Region",
	p."Code"

-- PostgreSQL.15 PostgreSQL12
SELECT
	k_1."Item1",
	k_1."Item2",
	d."Id",
	d."ParentRegion",
	d."ParentCode",
	d."Value"
FROM
	(VALUES
		(1,10), (1,20), (2,10)
	) k_1("Item1", "Item2")
		INNER JOIN "CompositeChild" d ON d."ParentRegion" = k_1."Item1" AND d."ParentCode" = k_1."Item2"
ORDER BY
	d."Id"

