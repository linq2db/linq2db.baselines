BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take_1 Int32
SET     @take_1 = 7
DECLARE @skip Int32
SET     @skip = 2

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
					t1."ChildID" DESC
			) t2
		WHERE
			ROWNUM <= :take_1
	) t3
WHERE
	t3.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take_1 Int32
SET     @take_1 = 7
DECLARE @skip Int32
SET     @skip = 2

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
					t1."ChildID" DESC
			) t2
		WHERE
			ROWNUM <= :take_1
	) t3
WHERE
	t3.RN > :skip

