BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @True Boolean
SET     @True = True

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
	Coalesce(r."BooleanN", :True)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @False Boolean
SET     @False = False

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
	Coalesce(r."BooleanN", :False)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
	(Coalesce(r."BooleanN", (r."Id"::decimal % 2)::decimal = 1))

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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

