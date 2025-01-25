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
			x."ParentID",
			t4."ChildID"
		FROM
			"Parent" x
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
				) t4 ON t4."ParentID" = x."ParentID"
		ORDER BY
			x."ParentID"
	) t5
WHERE
	ROWNUM <= :take

