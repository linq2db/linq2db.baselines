BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
WHERE
	(
		SELECT
			r."Value1"
		FROM
			"Parent" r
		FETCH NEXT 1 ROWS ONLY
	) IS NOT NULL

