BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	"Parent" t2
		LEFT JOIN (
			SELECT
				r."Value1"
			FROM
				"Parent" r
			FETCH NEXT 1 ROWS ONLY
		) t1 ON 1=1
WHERE
	t1."Value1" IS NOT NULL

