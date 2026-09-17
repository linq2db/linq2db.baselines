-- Informix.DB2 Informix
SELECT
	c_1.Id
FROM
	Company c_1
ORDER BY
	c_1.Id

-- Informix.DB2 Informix
SELECT
	k_1."item",
	d_1.Id,
	d_1.CompanyId,
	d_1.Name,
	d_1.IsActive
FROM
	(
		SELECT 1::Int AS "item" FROM table(set{1})
		UNION ALL
		SELECT 2::Int FROM table(set{1})
		UNION ALL
		SELECT 3::Int FROM table(set{1})) k_1
		INNER JOIN (
			SELECT
				d.Id,
				d.CompanyId,
				d.Name,
				d.IsActive,
				ROW_NUMBER() OVER (PARTITION BY d.CompanyId ORDER BY d.Id) as rn
			FROM
				Department d
		) d_1 ON d_1.CompanyId = k_1."item" AND d_1.rn <= 2
ORDER BY
	d_1.Id

