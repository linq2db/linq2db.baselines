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
	d_1.CompanyId as CompanyId,
	d_1.Name as Name,
	d_1.IsActive as IsActive
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN (
			SELECT
				d.Id as Id,
				d.CompanyId as CompanyId,
				d.Name as Name,
				d.IsActive as IsActive,
				ROW_NUMBER() OVER (PARTITION BY d.CompanyId ORDER BY d.Id) as rn
			FROM
				Department d
		) d_1 ON d_1.CompanyId = k_1.item
WHERE
	d_1.rn <= 2
ORDER BY
	d_1.Id

