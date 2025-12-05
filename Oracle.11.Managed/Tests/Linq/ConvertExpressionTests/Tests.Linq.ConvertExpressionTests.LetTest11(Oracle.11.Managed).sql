-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN t2."cond" IS NULL THEN 0
		ELSE t2."cond"
	END,
	t4."ParentID",
	t4."ChildID"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				t1."cond"
			FROM
				(
					SELECT
						c_1."ParentID" as "cond"
					FROM
						"Child" c_1
					WHERE
						c_1."ParentID" > 0
					ORDER BY
						c_1."ParentID"
				) t1
			WHERE
				ROWNUM <= 1
		) t2 ON 1=1
		LEFT JOIN (
			SELECT
				t3."ParentID",
				t3."ChildID"
			FROM
				(
					SELECT
						c_2."ParentID",
						c_2."ChildID"
					FROM
						"Child" c_2
					WHERE
						c_2."ChildID" > -100
					ORDER BY
						c_2."ParentID"
				) t3
			WHERE
				ROWNUM <= 1
		) t4 ON 1=1
ORDER BY
	p."ParentID"

