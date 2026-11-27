-- YDB Ydb
INSERT INTO ShiftedDateRow
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
	ShiftedDateRow t1
LIMIT 2

