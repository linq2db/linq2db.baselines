-- YDB Ydb

INSERT INTO TableWithIdentity
(
	Id,
	`Value`
)
VALUES
(
	543,
	123
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TableWithIdentity t1
LIMIT 2

