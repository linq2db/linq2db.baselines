-- YDB Ydb
DECLARE operand Int32
SET     operand = 2

SELECT
	SUM(g_1.Cents) * $operand as c1
FROM
	ConvertedAmount g_1
GROUP BY
	g_1.`Group`
LIMIT 2

-- YDB Ydb
DECLARE operand Int32
SET     operand = 2

SELECT
	$operand * SUM(g_1.Cents) as c1
FROM
	ConvertedAmount g_1
GROUP BY
	g_1.`Group`
LIMIT 2

-- YDB Ydb
DECLARE operand Int32
SET     operand = 2

SELECT
	SUM(g_1.Cents) / $operand as c1
FROM
	ConvertedAmount g_1
GROUP BY
	g_1.`Group`
LIMIT 2

-- YDB Ydb
DECLARE operand Int32
SET     operand = 200

SELECT
	SUM(g_1.Cents) % $operand as c1
FROM
	ConvertedAmount g_1
GROUP BY
	g_1.`Group`
LIMIT 2

-- YDB Ydb
DECLARE operand Int32
SET     operand = 200

SELECT
	SUM(g_1.Cents) + $operand as c1
FROM
	ConvertedAmount g_1
GROUP BY
	g_1.`Group`
LIMIT 2

-- YDB Ydb
DECLARE operand Int32
SET     operand = 2

SELECT
	x.Cents * $operand as c1
FROM
	ConvertedAmount x
WHERE
	x.Id = 1
LIMIT 2

-- YDB Ydb
DECLARE operand Int32
SET     operand = 200

SELECT
	x.Cents % $operand as c1
FROM
	ConvertedAmount x
WHERE
	x.Id = 1
LIMIT 2

-- YDB Ydb
DECLARE operand Int32
SET     operand = 200

SELECT
	x.Cents + $operand as c1
FROM
	ConvertedAmount x
WHERE
	x.Id = 1
LIMIT 2

-- YDB Ydb
DECLARE operand Int32
SET     operand = 200

SELECT
	x.Cents - $operand as c1
FROM
	ConvertedAmount x
WHERE
	x.Id = 1
LIMIT 2

