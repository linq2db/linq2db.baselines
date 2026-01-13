-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN t4."cond" IS NULL THEN 0
		ELSE t4."cond"
	END,
	t4."ParentID",
	t4."ChildID"
FROM
	(
		SELECT
			(
				SELECT
					t3."ParentID"
				FROM
					(
						SELECT
							c_2."ParentID"
						FROM
							"Child" c_2
						WHERE
							c_2."ParentID" > 0
						ORDER BY
							c_2."ParentID"
					) t3
				WHERE
					ROWNUM <= 1
			) as "cond",
			t2."ParentID",
			t2."ChildID",
			p."ParentID" as "ParentID_1"
		FROM
			"Parent" p
				LEFT JOIN (
					SELECT
						t1."ParentID",
						t1."ChildID"
					FROM
						(
							SELECT
								c_1."ParentID",
								c_1."ChildID"
							FROM
								"Child" c_1
							WHERE
								c_1."ChildID" > -100
							ORDER BY
								c_1."ParentID"
						) t1
					WHERE
						ROWNUM <= 1
				) t2 ON 1=1
	) t4
ORDER BY
	t4."ParentID_1"

