-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Data` as Data_1
FROM
	(VALUES
		(20,'Data 20'u), (21,'Data 21'u), (22,'Data 22'u)
	) t1(Id, `Data`)

