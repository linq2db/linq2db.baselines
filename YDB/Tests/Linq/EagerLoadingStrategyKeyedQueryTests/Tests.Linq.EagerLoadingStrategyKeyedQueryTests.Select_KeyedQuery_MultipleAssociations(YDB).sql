-- YDB Ydb
SELECT
	d.Id as Id,
	d.Name as Name
FROM
	Department d
ORDER BY
	d.Id

-- YDB Ydb
SELECT
	k_1.item as item_1,
	d.Id as Id,
	d.DepartmentId as DepartmentId,
	d.Name as Name,
	d.Salary as Salary
FROM
	(VALUES
		(101), (102), (103)
	) k_1(item)
		INNER JOIN Employee d ON d.DepartmentId = k_1.item
ORDER BY
	d.Id

-- YDB Ydb
SELECT
	k_1.item as item_1,
	d.Id as Id,
	d.DepartmentId as DepartmentId,
	d.Name as Name,
	d.Rate as Rate
FROM
	(VALUES
		(101), (102), (103)
	) k_1(item)
		INNER JOIN Contractor d ON d.DepartmentId = k_1.item
ORDER BY
	d.Id

