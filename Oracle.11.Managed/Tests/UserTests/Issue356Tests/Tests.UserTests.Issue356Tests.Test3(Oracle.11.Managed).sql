BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	t6."ParentID",
	t6."ChildID"
FROM
	(
		SELECT
			t5."ParentID",
			t4."ChildID"
		FROM
			"Parent" t5
				INNER JOIN (
					SELECT
						t3."ParentID",
						t3."ChildID"
					FROM
						(
							SELECT
								t2."ParentID",
								t2."ChildID",
								ROWNUM as RN
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
								ROWNUM <= 20
						) t3
					WHERE
						t3.RN > 10
				) t4 ON t4."ParentID" = t5."ParentID"
		ORDER BY
			t5."ParentID"
	) t6
WHERE
	ROWNUM <= :take
ORDER BY
	t6."ParentID"

