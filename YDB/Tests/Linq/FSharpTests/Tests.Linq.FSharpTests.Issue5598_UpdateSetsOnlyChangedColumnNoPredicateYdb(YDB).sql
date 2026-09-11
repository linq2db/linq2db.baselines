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
	Text = 'after'u

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

