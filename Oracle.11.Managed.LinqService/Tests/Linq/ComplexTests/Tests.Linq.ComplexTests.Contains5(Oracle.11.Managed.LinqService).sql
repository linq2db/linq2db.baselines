BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" IN (
		SELECT
			t3."ParentID"
		FROM
			(
				SELECT
					t2."ParentID"
				FROM
					(
						SELECT
							t1."ParentID",
							ROWNUM as RN
						FROM
							(
								SELECT
									p."ParentID"
								FROM
									"Parent" p
							) t1
						WHERE
							ROWNUM <= 101
					) t2
				WHERE
					t2.RN > 1
			) t3
	)

