-- YDB Ydb

SELECT
	c_1.Id as Id,
	c_1.Name as Name
FROM
	Company c_1
ORDER BY
	c_1.Id

-- YDB Ydb

SELECT
	k_1.item as item_1,
	d.Id as Id,
	d.CompanyId as CompanyId,
	d.Name as Name,
	d.IsActive as IsActive
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN Department d ON d.CompanyId = k_1.item
ORDER BY
	d.Id

