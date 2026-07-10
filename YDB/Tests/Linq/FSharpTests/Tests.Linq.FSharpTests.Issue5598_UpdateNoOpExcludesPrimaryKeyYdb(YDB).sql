-- YDB Ydb
INSERT INTO Issue4132Table
(
	Id,
	`Number`,
	Text
)
VALUES
(
	1,
	5,
	'before'u
)

-- YDB Ydb
UPDATE
	Issue4132Table
SET
	`Number` = Issue4132Table.`Number`,
	Text = Issue4132Table.Text
WHERE
	Issue4132Table.Id = 1

-- YDB Ydb
SELECT
	r.Id as Id,
	r.`Number` as Number_1,
	r.Text as Text
FROM
	Issue4132Table r
WHERE
	r.Id = 1
LIMIT 2

