-- YDB Ydb
SELECT
	c_1.Id as Id
FROM
	Company c_1
ORDER BY
	c_1.Id

-- YDB Ydb
SELECT
	k_1.item as item_1,
	d_1.Id as Id,
	d_1.Name as Name
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN (
			SELECT
				d.Id as Id,
				d.Name as Name,
				ROW_NUMBER() OVER (PARTITION BY d.CompanyId ORDER BY d.Id) as rn,
				d.CompanyId as CompanyId
			FROM
				Department d
		) d_1 ON k_1.item = d_1.CompanyId
WHERE
	d_1.rn <= 2
ORDER BY
	d_1.Id

