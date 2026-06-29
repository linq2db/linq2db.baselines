-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name
FROM
	Company t1
ORDER BY
	t1.Id

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
		INNER JOIN Department d ON k_1.item = d.CompanyId
WHERE
	d.Id > k_1.item

