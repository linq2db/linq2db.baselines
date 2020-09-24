BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 10

SELECT
	p_1.ParentID,
	r.ChildID
FROM
	(
		SELECT
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0
		FETCH NEXT :take ROWS ONLY
	) p_1
		FULL JOIN Child r ON p_1.ParentID = r.ParentID

