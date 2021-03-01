BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id1 Int32
SET     @id1 = 1
DECLARE @id2 Int32
SET     @id2 = 2
DECLARE @take Int32
SET     @take = 2

SELECT
	COUNT(left_1."ParentID") as "c1",
	COUNT(t1."ParentID") as "c2",
	COUNT(*) as "c3"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" <> :id1
	) left_1
		FULL JOIN (
			SELECT
				p_1."ParentID"
			FROM
				"Parent" p_1
			WHERE
				p_1."ParentID" <> :id2
		) t1 ON t1."ParentID" = left_1."ParentID"
FETCH NEXT :take ROWS ONLY

