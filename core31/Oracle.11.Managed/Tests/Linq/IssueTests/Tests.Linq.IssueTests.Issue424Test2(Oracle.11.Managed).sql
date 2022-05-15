BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take_1 Int32
SET     @take_1 = 2
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t4."ParentID",
	t4."Value1"
FROM
	(
		SELECT
			t3."ParentID",
			t3."Value1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t2."ParentID",
					t2."Value1"
				FROM
					(
						SELECT DISTINCT
							t1."ParentID",
							t1."Value1"
						FROM
							"Parent" t1
					) t2
				ORDER BY
					t2."ParentID"
			) t3
		WHERE
			ROWNUM <= :take_1
	) t4
WHERE
	t4.RN > :skip

