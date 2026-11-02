-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @operand Int32
SET     @operand = 2

SELECT
	SUM(g_1."Cents") * :operand as "c1"
FROM
	"ConvertedAmount" g_1
GROUP BY
	g_1."Group"
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @operand Int32
SET     @operand = 2

SELECT
	:operand * SUM(g_1."Cents") as "c1"
FROM
	"ConvertedAmount" g_1
GROUP BY
	g_1."Group"
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @operand Int32
SET     @operand = 2

SELECT
	SUM(g_1."Cents") / :operand as "c1"
FROM
	"ConvertedAmount" g_1
GROUP BY
	g_1."Group"
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @operand Int32
SET     @operand = 200

SELECT
	MOD(SUM(g_1."Cents"), :operand) as "c1"
FROM
	"ConvertedAmount" g_1
GROUP BY
	g_1."Group"
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @operand Int32
SET     @operand = 200

SELECT
	SUM(g_1."Cents") + :operand as "c1"
FROM
	"ConvertedAmount" g_1
GROUP BY
	g_1."Group"
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @operand Int32
SET     @operand = 2

SELECT
	x."Cents" * :operand as "c1"
FROM
	"ConvertedAmount" x
WHERE
	x."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @operand Int32
SET     @operand = 200

SELECT
	MOD(x."Cents", :operand) as "c1"
FROM
	"ConvertedAmount" x
WHERE
	x."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @operand Int32
SET     @operand = 200

SELECT
	x."Cents" + :operand as "c1"
FROM
	"ConvertedAmount" x
WHERE
	x."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @operand Int32
SET     @operand = 200

SELECT
	x."Cents" - :operand as "c1"
FROM
	"ConvertedAmount" x
WHERE
	x."Id" = 1
FETCH NEXT 2 ROWS ONLY

