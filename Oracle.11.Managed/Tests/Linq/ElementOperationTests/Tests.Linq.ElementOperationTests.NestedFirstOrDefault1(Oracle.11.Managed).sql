-- Oracle.11.Managed Oracle11

SELECT
	t2."ParentID",
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				"Child" t1
			WHERE
				ROWNUM <= 1
		) t2 ON 1=1

