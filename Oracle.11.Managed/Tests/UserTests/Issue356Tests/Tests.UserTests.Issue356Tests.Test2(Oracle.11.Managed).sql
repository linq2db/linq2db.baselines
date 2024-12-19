BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	t5."ParentID",
	t5."ChildID"
FROM
	(
		SELECT
			t4."ParentID",
			t3."ChildID"
		FROM
			"Parent" t4
				INNER JOIN (
					SELECT
						t2."ParentID",
						t2."ChildID"
					FROM
						(
							SELECT
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
							ORDER BY
								c_2."ParentID"
						) t2
					WHERE
						ROWNUM <= 10
				) t3 ON t3."ParentID" = t4."ParentID"
		ORDER BY
			t4."ParentID"
	) t5
WHERE
	ROWNUM <= :take
ORDER BY
	t5."ParentID"

