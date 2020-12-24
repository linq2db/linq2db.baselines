BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 10
DECLARE @take_1 Int32
SET     @take_1 = 10

SELECT
	t4."ParentID",
	t4."ChildID"
FROM
	(
		SELECT
			cp."ParentID",
			c_1."ChildID"
		FROM
			"Parent" cp
				CROSS JOIN (
					SELECT
						t3."ParentID",
						t3."ChildID"
					FROM
						(
							SELECT
								t1."ParentID",
								t1."ChildID"
							FROM
								"Child" t1
							UNION
							SELECT
								t2."ParentID",
								t2."ChildID"
							FROM
								"Child" t2
						) t3
					WHERE
						ROWNUM <= :take
				) c_1
		WHERE
			c_1."ParentID" = cp."ParentID"
		ORDER BY
			cp."ParentID"
	) t4
WHERE
	ROWNUM <= :take_1

