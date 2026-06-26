-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."Value1" + 12345
FROM
	"ClientCalcEntity" e

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Name"
FROM
	"ClientCalcEntity" t1

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN e."Id" > 1 THEN e."Value1"
		ELSE e."Value2"
	END
FROM
	"ClientCalcEntity" e

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Name"
FROM
	"ClientCalcEntity" t1

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	-e."Value1"
FROM
	"ClientCalcEntity" e

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Name"
FROM
	"ClientCalcEntity" t1

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."Value1" + ABS(e."Value2")
FROM
	"ClientCalcEntity" e

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Name"
FROM
	"ClientCalcEntity" t1

