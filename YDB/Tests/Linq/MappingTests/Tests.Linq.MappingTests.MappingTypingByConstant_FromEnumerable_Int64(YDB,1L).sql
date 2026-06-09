-- YDB Ydb

SELECT
	arg.Id as Id,
	arg.`Value` as Value_1
FROM
	Person entity
		INNER JOIN (VALUES
			(1,CAST(1l AS Int64))
		) arg(Id, `Value`) ON entity.PersonID = arg.Id

-- YDB Ydb

SELECT
	arg.Id as Id,
	arg.`Value` as Value_1
FROM
	Person entity
		INNER JOIN (VALUES
			(1,CAST(2147483648l AS Int64))
		) arg(Id, `Value`) ON entity.PersonID = arg.Id

