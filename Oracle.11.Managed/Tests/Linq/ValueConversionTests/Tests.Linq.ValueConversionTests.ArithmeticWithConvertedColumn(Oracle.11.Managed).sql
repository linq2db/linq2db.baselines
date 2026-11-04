-- Oracle.11.Managed Oracle11
DECLARE @operand Int32
SET     @operand = 2

SELECT
	t1."c1"
FROM
	(
		SELECT
			SUM(g_1."Cents") * :operand as "c1"
		FROM
			"ConvertedAmount" g_1
		GROUP BY
			g_1."Group"
	) t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @operand Int32
SET     @operand = 2

SELECT
	t1."c1"
FROM
	(
		SELECT
			:operand * SUM(g_1."Cents") as "c1"
		FROM
			"ConvertedAmount" g_1
		GROUP BY
			g_1."Group"
	) t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @operand Int32
SET     @operand = 2

SELECT
	t1."c1"
FROM
	(
		SELECT
			SUM(g_1."Cents") / :operand as "c1"
		FROM
			"ConvertedAmount" g_1
		GROUP BY
			g_1."Group"
	) t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @operand Int32
SET     @operand = 200

SELECT
	t1."c1"
FROM
	(
		SELECT
			MOD(SUM(g_1."Cents"), :operand) as "c1"
		FROM
			"ConvertedAmount" g_1
		GROUP BY
			g_1."Group"
	) t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @operand Int32
SET     @operand = 200

SELECT
	t1."c1"
FROM
	(
		SELECT
			SUM(g_1."Cents") + :operand as "c1"
		FROM
			"ConvertedAmount" g_1
		GROUP BY
			g_1."Group"
	) t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @operand Int32
SET     @operand = 2

SELECT
	x."Cents" * :operand
FROM
	"ConvertedAmount" x
WHERE
	x."Id" = 1 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @operand Int32
SET     @operand = 200

SELECT
	MOD(x."Cents", :operand)
FROM
	"ConvertedAmount" x
WHERE
	x."Id" = 1 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @operand Int32
SET     @operand = 200

SELECT
	x."Cents" + :operand
FROM
	"ConvertedAmount" x
WHERE
	x."Id" = 1 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @operand Int32
SET     @operand = 200

SELECT
	x."Cents" - :operand
FROM
	"ConvertedAmount" x
WHERE
	x."Id" = 1 AND ROWNUM <= 2

