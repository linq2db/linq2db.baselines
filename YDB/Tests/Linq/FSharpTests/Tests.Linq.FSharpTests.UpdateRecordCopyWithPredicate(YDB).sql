-- YDB Ydb
INSERT INTO RecordSetterTable
(
	Id,
	`Number`,
	Text
)
VALUES
(
	1,
	1,
	'before'u
)

-- YDB Ydb
UPDATE
	RecordSetterTable
SET
	Text = 'updated recently'u
WHERE
	RecordSetterTable.`Number` = 1

-- YDB Ydb
SELECT
	r.Id as Id,
	r.`Number` as Number_1,
	r.Text as Text
FROM
	RecordSetterTable r
WHERE
	r.Id = 1
LIMIT 2

