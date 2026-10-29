-- Oracle.11.Managed Oracle11
SELECT DISTINCT
	MOD(g_1."ParentID", 3)
FROM
	"Parent" g_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" x
		WHERE
			MOD(g_1."ParentID", 3) = MOD(x."ParentID", 3) AND (x."Value1" <> 1 OR x."Value1" IS NULL)
	)

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11
SELECT
	g_2."Key_1",
	COUNT(CASE
		WHEN g_2."c1" = 0 THEN 1
		ELSE NULL
	END)
FROM
	(
		SELECT
			MOD(g_1."ParentID", 2) as "Key_1",
			CASE
				WHEN g_1."Value1" = 1 THEN 1
				ELSE 0
			END as "c1"
		FROM
			"Parent" g_1
	) g_2
GROUP BY
	g_2."Key_1"
HAVING
	COUNT(CASE
		WHEN g_2."c1" = 0 THEN 1
		ELSE NULL
	END) > 1

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

