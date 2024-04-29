BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	"Parent" t2
		LEFT JOIN (
			SELECT
				CASE
					WHEN r."Value1" IS NOT NULL THEN 1
					ELSE 0
				END as "HasValue"
			FROM
				"Parent" r
			WHERE
				ROWNUM <= 1
		) t1 ON 1=1
WHERE
	t1."HasValue" = 1

