-- YDB Ydb
DECLARE $r3 Int32
SET     $r3 = 1

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two, i.Three) = (i.One, i.One * 2, $r3)

