-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @skip_1 Int32
SET     @skip_1 = 2
DECLARE @take Int32
SET     @take = 7

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
					t1."ParentID",
					t1."ChildID"
				FROM
					"Child" t1
				ORDER BY
					t1."ChildID"
			) t2
		WHERE
			ROWNUM <= (:skip + :skip_1 + :take - :skip_1)
	) t3
WHERE
	t3.RN > :skip + :skip_1
ORDER BY
	t3."ChildID"

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @skip_1 Int32
SET     @skip_1 = 2
DECLARE @take Int32
SET     @take = 7

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
					t1."ParentID",
					t1."ChildID"
				FROM
					"Child" t1
				ORDER BY
					t1."ChildID"
			) t2
		WHERE
			ROWNUM <= (:skip + :skip_1 + :take - :skip_1)
	) t3
WHERE
	t3.RN > :skip + :skip_1
ORDER BY
	t3."ChildID"

