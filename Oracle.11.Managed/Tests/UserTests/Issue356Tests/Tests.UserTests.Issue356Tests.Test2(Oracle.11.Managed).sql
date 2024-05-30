BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	t4."ParentID",
	t4."ChildID"
FROM
	(
		SELECT
			x."ParentID",
			t3."ChildID"
		FROM
			"Parent" x
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
				) t3 ON t3."ParentID" = x."ParentID"
		ORDER BY
			x."ParentID"
	) t4
WHERE
	ROWNUM <= :take

