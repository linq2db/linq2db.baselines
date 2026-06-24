-- YDB Ydb

SELECT
	p.Region as Region,
	p.Code as Code,
	p.Name as Name
FROM
	CompositeParent p
ORDER BY
	p.Region,
	p.Code

-- YDB Ydb

SELECT
	k_1.Item1 as Item1,
	k_1.Item2 as Item2,
	d.Id as Id,
	d.ParentRegion as ParentRegion,
	d.ParentCode as ParentCode,
	d.`Value` as Value_1
FROM
	(VALUES
		(1,10), (1,20), (2,10)
	) k_1(Item1, Item2)
		INNER JOIN CompositeChild d ON d.ParentRegion = k_1.Item1 AND d.ParentCode = k_1.Item2
ORDER BY
	d.Id

