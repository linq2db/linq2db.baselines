-- YDB Ydb
DECLARE low Text(36) -- AnsiString
SET     low = '00000000-0000-0000-0000-000000000001'u
DECLARE high Text(36) -- AnsiString
SET     high = '00000000-0000-0000-0000-000000000002'u

SELECT
	r.Id as Id,
	CASE
		WHEN r.`Value` BETWEEN $low AND $high THEN true
		ELSE false
	END as c1
FROM
	BetweenTextRow r
WHERE
	r.`Value` NOT BETWEEN $high AND $high

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	BetweenTextRow t1

