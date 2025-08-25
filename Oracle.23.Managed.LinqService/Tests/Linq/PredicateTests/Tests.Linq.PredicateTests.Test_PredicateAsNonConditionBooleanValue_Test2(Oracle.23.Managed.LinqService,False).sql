BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" = g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" <> g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" > g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" < g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" >= g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" <= g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value4" = g_1."Value5" OR g_1."Value4" IS NULL AND g_1."Value5" IS NULL
					THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value4" <> g_1."Value5" OR g_1."Value4" IS NULL AND g_1."Value5" IS NOT NULL OR g_1."Value4" IS NOT NULL AND g_1."Value5" IS NULL
					THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value4" > g_1."Value5" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value4" < g_1."Value5" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value4" >= g_1."Value5" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value4" <= g_1."Value5" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" = g_1."Value4" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" <> g_1."Value4" OR g_1."Value4" IS NULL
					THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" > g_1."Value4" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" < g_1."Value4" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" >= g_1."Value4" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value1" <= g_1."Value4" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value5" = g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value5" <> g_1."Value2" OR g_1."Value5" IS NULL
					THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value5" > g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value5" < g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value5" >= g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."Value5" <= g_1."Value2" THEN 1
				ELSE 0
			END as "Key_1"
		FROM
			"BooleanTable" g_1
	) g_2
GROUP BY
	g_2."Key_1"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

