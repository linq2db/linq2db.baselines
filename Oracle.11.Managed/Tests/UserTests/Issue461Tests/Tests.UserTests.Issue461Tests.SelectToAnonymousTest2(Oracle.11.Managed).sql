BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."ParentId"
FROM
	"Parent" sep
		LEFT JOIN (
			SELECT
				l."ParentID" + 1 as "Id",
				l."ParentID" as "ParentId"
			FROM
				"Child" l
			WHERE
				ROWNUM <= 1
		) t1 ON 1=1

