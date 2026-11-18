-- ClickHouse.Driver ClickHouse
SELECT
	c_1.Id
FROM
	Company c_1
ORDER BY
	c_1.Id

-- ClickHouse.Driver ClickHouse
SELECT
	k_1.item,
	d_1.Id,
	d_1.Name
FROM
	(
		SELECT 1 AS item
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) k_1
		INNER JOIN (
			SELECT
				d.Id as Id,
				d.Name as Name,
				ROW_NUMBER() OVER (PARTITION BY d.CompanyId ORDER BY d.Id) as rn,
				d.CompanyId as CompanyId
			FROM
				Department d
		) d_1 ON k_1.item = d_1.CompanyId AND d_1.rn <= 2
ORDER BY
	d_1.Id

