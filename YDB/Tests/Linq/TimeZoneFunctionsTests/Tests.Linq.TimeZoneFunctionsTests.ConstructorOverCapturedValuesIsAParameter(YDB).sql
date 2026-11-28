-- YDB Ydb
SELECT
	r.Dto as Dto
FROM
	ZonedRow r
LIMIT 2

-- YDB Ydb
DECLARE p Timestamp -- DateTime2
SET     p = Timestamp('2020-06-15T11:20:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	ZonedRow r
WHERE
	r.Dto = $p

