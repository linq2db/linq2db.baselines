BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 1

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
					p."ParentID",
					p."Value1"
				FROM
					"Parent" p
				WHERE
					p."ParentID" > 1
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

