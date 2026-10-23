-- YDB Ydb
SELECT
	x.Id as Id,
	ROW_NUMBER() OVER (ORDER BY x.BoolValue, x.Id) as OrderColumn,
	ROW_NUMBER() OVER (ORDER BY x.IntValue % 20 = 0, x.Id) as OrderPredicate,
	ROW_NUMBER() OVER (PARTITION BY x.BoolValue ORDER BY x.Id) as PartitionColumn,
	ROW_NUMBER() OVER (PARTITION BY x.IntValue % 20 = 0 ORDER BY x.Id) as PartitionPredicate,
	ROW_NUMBER() OVER (PARTITION BY x.NullableBoolValue ORDER BY x.Id) as PartitionNullable
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

