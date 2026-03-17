-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	t4."ParentID",
	t4."ChildID"
FROM
	(
		SELECT
			t3."ParentID",
			t2."ChildID"
		FROM
			"Parent" t3
				INNER JOIN (
					SELECT DISTINCT
						c_2."ParentID",
						c_2."ChildID"
					FROM
						(
							SELECT
								c_1."ParentID",
								c_1."ChildID"
							FROM
								"Child" c_1
							UNION
							SELECT
								t1."ParentID",
								t1."ChildID"
							FROM
								"Child" t1
						) c_2
				) t2 ON t2."ParentID" = t3."ParentID"
		ORDER BY
			t3."ParentID",
			t2."ChildID"
	) t4
WHERE
	ROWNUM <= :take
ORDER BY
	t4."ParentID",
	t4."ChildID"

