BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @True Int16
SET     @True = 1

SELECT
	r."Id",
	r."Boolean",
	r."BooleanN",
	r."Int32",
	r."Int32N",
	r."Decimal",
	r."DecimalN",
	r."Double",
	r."DoubleN"
FROM
	"BooleanTable" r
WHERE
	Coalesce(r."BooleanN", :True) = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Boolean",
	t1."BooleanN",
	t1."Int32",
	t1."Int32N",
	t1."Decimal",
	t1."DecimalN",
	t1."Double",
	t1."DoubleN"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @False Int16
SET     @False = 0

SELECT
	r."Id",
	r."Boolean",
	r."BooleanN",
	r."Int32",
	r."Int32N",
	r."Decimal",
	r."DecimalN",
	r."Double",
	r."DoubleN"
FROM
	"BooleanTable" r
WHERE
	Coalesce(r."BooleanN", :False) = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Boolean",
	t1."BooleanN",
	t1."Int32",
	t1."Int32N",
	t1."Decimal",
	t1."DecimalN",
	t1."Double",
	t1."DoubleN"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Boolean",
	r."BooleanN",
	r."Int32",
	r."Int32N",
	r."Decimal",
	r."DecimalN",
	r."Double",
	r."DoubleN"
FROM
	"BooleanTable" r
WHERE
	Coalesce(r."BooleanN", CASE
		WHEN MOD(r."Id", 2) = 1 THEN 1
		ELSE 0
	END) = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Boolean",
	t1."BooleanN",
	t1."Int32",
	t1."Int32N",
	t1."Decimal",
	t1."DecimalN",
	t1."Double",
	t1."DoubleN"
FROM
	"BooleanTable" t1

