-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."Region",
	p."Code",
	p."Name"
FROM
	"CompositeParent" p
ORDER BY
	p."Region",
	p."Code"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	k_1."Item1",
	k_1."Item2",
	d."Id",
	d."ParentRegion",
	d."ParentCode",
	d."Value"
FROM
	(
		SELECT 1 AS "Item1", 10 AS "Item2" FROM sys.dual
		UNION ALL
		SELECT 1, 20 FROM sys.dual
		UNION ALL
		SELECT 2, 10 FROM sys.dual) k_1
		INNER JOIN "CompositeChild" d ON d."ParentRegion" = k_1."Item1" AND d."ParentCode" = k_1."Item2"
ORDER BY
	d."Id"

