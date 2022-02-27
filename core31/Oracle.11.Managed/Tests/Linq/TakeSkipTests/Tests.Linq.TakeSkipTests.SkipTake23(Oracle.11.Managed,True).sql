BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip_2 Int32
SET     @skip_2 = 8
DECLARE @skip_3 Int32
SET     @skip_3 = 3

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
			ROWNUM <= :skip_2
	) t3
WHERE
	t3.RN > :skip_3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip_2 Int32
SET     @skip_2 = 8
DECLARE @skip_3 Int32
SET     @skip_3 = 3

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
			ROWNUM <= :skip_2
	) t3
WHERE
	t3.RN > :skip_3

