BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2
DECLARE @skip_1 Int32
SET     @skip_1 = 1

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."ParentID",
					x."Value1"
				FROM
					"Parent" x
				WHERE
					x."Value1" = 1
				ORDER BY
					x."ParentID" DESC
			) t1
		WHERE
			ROWNUM <= :skip
	) t2
WHERE
	t2.RN > :skip_1

