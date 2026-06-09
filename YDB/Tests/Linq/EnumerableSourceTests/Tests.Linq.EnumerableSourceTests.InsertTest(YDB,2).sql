-- YDB Ydb

INSERT INTO TableToInsert
(
	Id,
	`Value`
)
SELECT
	t1.Id as Id,
	t1.`Value` as `Value`
FROM
	(VALUES
		(3,'Janet'u), (4,'Doe'u)
	) t1(Id, `Value`)
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

-- YDB Ydb

INSERT INTO TableToInsert
(
	Id,
	`Value`
)
SELECT
	t1.Id as Id,
	t1.`Value` as `Value`
FROM
	(VALUES
		(3,'Janet'u), (4,'Doe'u)
	) t1(Id, `Value`)
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

