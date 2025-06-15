BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" = r."Value2" THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value4" = r."Value5" OR r."Value4" IS NULL AND r."Value5" IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" = r."Value5" THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value4" = r."Value2" THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" = r."Value2" THEN 1
		ELSE 0
	END <> CASE
		WHEN r."Value4" = r."Value5" OR r."Value4" IS NULL AND r."Value5" IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" = r."Value5" THEN 1
		ELSE 0
	END <> CASE
		WHEN r."Value4" = r."Value2" THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" = r."Value2" THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value2" = r."Value1" THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" = r."Value2" THEN 1
		ELSE 0
	END <> CASE
		WHEN r."Value2" = r."Value1" THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value4" = r."Value5" OR r."Value4" IS NULL AND r."Value5" IS NULL
			THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value4" = r."Value5" OR r."Value4" IS NULL AND r."Value5" IS NULL
			THEN 1
		ELSE 0
	END <> CASE
		WHEN r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" >= r."Value2" THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value4" <> r."Value5" OR r."Value4" IS NULL AND r."Value5" IS NOT NULL OR r."Value4" IS NOT NULL AND r."Value5" IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" >= r."Value5" THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value4" <> r."Value2" OR r."Value4" IS NULL THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" >= r."Value2" THEN 1
		ELSE 0
	END <> CASE
		WHEN r."Value4" <> r."Value5" OR r."Value4" IS NULL AND r."Value5" IS NOT NULL OR r."Value4" IS NOT NULL AND r."Value5" IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" >= r."Value5" THEN 1
		ELSE 0
	END <> CASE
		WHEN r."Value4" <> r."Value2" OR r."Value4" IS NULL THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" >= r."Value2" THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value2" <> r."Value1" THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value1" >= r."Value2" THEN 1
		ELSE 0
	END <> CASE
		WHEN r."Value2" <> r."Value1" THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value4" >= r."Value5" THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value5" <> r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NOT NULL OR r."Value5" IS NOT NULL AND r."Value4" IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	CASE
		WHEN r."Value4" >= r."Value5" THEN 1
		ELSE 0
	END <> CASE
		WHEN r."Value5" <> r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NOT NULL OR r."Value5" IS NOT NULL AND r."Value4" IS NULL
			THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

