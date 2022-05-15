BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip_1 Int32
SET     @skip_1 = 8
DECLARE @skip_2 Int32
SET     @skip_2 = 3

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
			ROWNUM <= :skip_1
	) t3
WHERE
	t3.RN > :skip_2

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip_1 Int32
SET     @skip_1 = 8
DECLARE @skip_2 Int32
SET     @skip_2 = 3

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
			ROWNUM <= :skip_1
	) t3
WHERE
	t3.RN > :skip_2

