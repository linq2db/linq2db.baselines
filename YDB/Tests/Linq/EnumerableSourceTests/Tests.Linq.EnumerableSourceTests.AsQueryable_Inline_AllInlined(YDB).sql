-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Data` as Data_1
FROM
	(VALUES
		(0,'Data 0'u), (1,'Data 1'u)
	) t1(Id, `Data`)
ORDER BY
	t1.Id

