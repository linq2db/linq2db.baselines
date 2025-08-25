BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id",
	t1."ParentID"
FROM
	"Parent" sep
		LEFT JOIN (
			SELECT
				l."ParentID" + 1 as "Id",
				l."ParentID"
			FROM
				"Child" l
			WHERE
				ROWNUM <= 1
		) t1 ON 1=1

