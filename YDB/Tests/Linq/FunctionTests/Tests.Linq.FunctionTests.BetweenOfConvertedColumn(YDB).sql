-- YDB Ydb
DECLARE ConstantBounds Text(5) -- String
SET     ConstantBounds = '00005'u
DECLARE ConstantBounds_1 Text(5) -- String
SET     ConstantBounds_1 = '00050'u
DECLARE low Text(5) -- String
SET     low = '00005'u
DECLARE high Text(5) -- String
SET     high = '00050'u
DECLARE value Text(5) -- String
SET     value = '00042'u
DECLARE minimum Int64
SET     minimum = 5l
DECLARE maximum Int64
SET     maximum = 50l
DECLARE Padded Text(5) -- String
SET     Padded = '00100'u
DECLARE Padded_1 Text(5) -- String
SET     Padded_1 = '00200'u

SELECT
	r.Id as Id,
	r.Padded BETWEEN $ConstantBounds AND $ConstantBounds_1 as c1,
	r.Padded NOT BETWEEN $low AND $high as c2,
	$value BETWEEN r.Low AND r.High as c3,
	r.Elapsed BETWEEN $minimum AND $maximum as c4
FROM
	BetweenConvertedRow r
WHERE
	r.Padded NOT BETWEEN $Padded AND $Padded_1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Padded as Padded,
	t1.Low as Low,
	t1.High as High,
	t1.Elapsed as Elapsed
FROM
	BetweenConvertedRow t1

-- YDB Ydb
DECLARE InRange Text(5) -- String
SET     InRange = '00001'u
DECLARE InRange_1 Text(5) -- String
SET     InRange_1 = '00010'u
DECLARE Padded Text(5) -- String
SET     Padded = '00100'u
DECLARE Padded_1 Text(5) -- String
SET     Padded_1 = '00200'u

SELECT
	g_2.Key_1 as Key_1,
	g_2.InRange BETWEEN $InRange AND $InRange_1 as c1
FROM
	(
		SELECT
			g_1.Id as Key_1,
			MAX(g_1.Padded) as InRange
		FROM
			BetweenConvertedRow g_1
		GROUP BY
			g_1.Id
	) g_2
WHERE
	g_2.InRange NOT BETWEEN $Padded AND $Padded_1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Padded as Padded,
	t1.Low as Low,
	t1.High as High,
	t1.Elapsed as Elapsed
FROM
	BetweenConvertedRow t1

