-- YDB Ydb
INSERT INTO Issue5975Row
(
	Id,
	Plain,
	`Date`
)
VALUES
(
	1,
	CurrentUtcTimestamp(),
	CurrentUtcTimestamp()
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Plain as Plain,
	t1.`Date` as Date_1
FROM
	Issue5975Row t1
LIMIT 2

