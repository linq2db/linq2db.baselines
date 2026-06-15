-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Data` as Data_1
FROM
	(VALUES
		(10,'Data 10'u), (11,'Data 11'u)
	) t1(Id, `Data`)

