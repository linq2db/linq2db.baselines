-- YDB Ydb

SELECT
	arg.Id as Id,
	arg.`Value` as Value_1
FROM
	Person entity
		INNER JOIN (VALUES
			(1,CAST(NULL AS Double))
		) arg(Id, `Value`) ON entity.PersonID = arg.Id

-- YDB Ydb

SELECT
	arg.Id as Id,
	arg.`Value` as Value_1
FROM
	Person entity
		INNER JOIN (VALUES
			(1,CAST(Double('3147483648') AS Double))
		) arg(Id, `Value`) ON entity.PersonID = arg.Id

