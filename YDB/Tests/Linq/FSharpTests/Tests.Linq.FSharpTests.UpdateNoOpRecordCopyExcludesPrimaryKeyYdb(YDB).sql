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
	5,
	'before'u
)

-- YDB Ydb
UPDATE
	RecordSetterTable
SET
	`Number` = RecordSetterTable.`Number`,
	Text = RecordSetterTable.Text
WHERE
	RecordSetterTable.Id = 1

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

