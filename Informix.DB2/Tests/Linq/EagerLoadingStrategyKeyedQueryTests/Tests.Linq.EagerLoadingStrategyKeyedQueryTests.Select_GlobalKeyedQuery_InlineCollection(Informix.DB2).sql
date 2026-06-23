-- Informix.DB2 Informix

SELECT
	c_1.Id,
	c_1.Name
FROM
	Company c_1
ORDER BY
	c_1.Id

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
		INNER JOIN Department d ON d.CompanyId = k_1."item"
ORDER BY
	d.Id

