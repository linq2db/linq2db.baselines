-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Name
FROM
	Company t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

SELECT
	k_1."item",
	d.Id,
	d.CompanyId,
	d.Name,
	d.IsActive
FROM
	(
		SELECT 1::Int AS "item" FROM table(set{1})
		UNION ALL
		SELECT 2::Int FROM table(set{1})
		UNION ALL
		SELECT 3::Int FROM table(set{1})) k_1
		INNER JOIN Department d ON k_1."item" = d.CompanyId AND d.Id > k_1."item"

