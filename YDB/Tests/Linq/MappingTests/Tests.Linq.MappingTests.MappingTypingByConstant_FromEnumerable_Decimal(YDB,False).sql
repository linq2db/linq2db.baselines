-- YDB Ydb

SELECT
	arg.Id as Id,
	arg.`Value` as Value_1
FROM
	Person entity
		INNER JOIN (VALUES
			(1,CAST(Decimal('1', 22, 9) AS Decimal(22,9)))
		) arg(Id, `Value`) ON entity.PersonID = arg.Id

-- YDB Ydb

SELECT
	arg.Id as Id,
	arg.`Value` as Value_1
FROM
	Person entity
		INNER JOIN (VALUES
			(1,CAST(Decimal('2147483648.123', 22, 9) AS Decimal(22,9)))
		) arg(Id, `Value`) ON entity.PersonID = arg.Id

