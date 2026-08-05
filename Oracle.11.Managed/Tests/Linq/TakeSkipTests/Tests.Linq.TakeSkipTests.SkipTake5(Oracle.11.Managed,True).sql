-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 5

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
			) t2
		WHERE
			ROWNUM <= (:skip + :take)
	) t3
WHERE
	t3.RN > :skip

