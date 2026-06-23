-- DuckDB

SELECT
	c_1.Id,
	c_1.Name
FROM
	Company c_1
ORDER BY
	c_1.Id

-- DuckDB

SELECT
	k_1."item",
	d.Id,
	d.CompanyId,
	d.Name,
	d.IsActive
FROM
	(VALUES
		(1), (2), (3)
	) k_1("item")
		INNER JOIN Department d ON d.CompanyId = k_1."item"
ORDER BY
	d.Id

