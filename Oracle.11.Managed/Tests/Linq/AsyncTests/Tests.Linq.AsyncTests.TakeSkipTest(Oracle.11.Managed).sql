-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t3."ParentID",
	t3."Value1"
FROM
	(
		SELECT
			t2."ParentID",
			t2."Value1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1."ParentID",
					t1."Value1"
				FROM
					"Parent" t1
				ORDER BY
					t1."ParentID"
			) t2
		WHERE
			ROWNUM <= (:skip + :take)
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3."ParentID"

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t3."ParentID",
	t3."Value1"
FROM
	(
		SELECT
			t2."ParentID",
			t2."Value1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1."ParentID",
					t1."Value1"
				FROM
					"Parent" t1
				ORDER BY
					t1."ParentID"
			) t2
		WHERE
			ROWNUM <= (:skip + :take)
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3."ParentID"

