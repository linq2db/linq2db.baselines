-- YDB Ydb
SELECT
	x.Id as Id,
	ROW_NUMBER() OVER (ORDER BY x.IntValue = 20, x.Id) as ByOrder,
	ROW_NUMBER() OVER (PARTITION BY x.IntValue = 20 ORDER BY x.Id) as ByPartition
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

