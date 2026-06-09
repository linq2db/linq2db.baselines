-- YDB Ydb

SELECT
	arg.Id as Id,
	arg.`Value` as Value_1
FROM
	Person entity
		INNER JOIN (VALUES
			(1,CAST(NULL AS Uint32))
		) arg(Id, `Value`) ON entity.PersonID = arg.Id

-- YDB Ydb

SELECT
	arg.Id as Id,
	arg.`Value` as Value_1
FROM
	Person entity
		INNER JOIN (VALUES
			(1,2147483648u)
		) arg(Id, `Value`) ON entity.PersonID = arg.Id

