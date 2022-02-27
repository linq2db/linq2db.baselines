BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	p.ParentID,
	t1.ParentID,
	t1.c1
FROM
	Parent p
		OUTER APPLY (
			SELECT
				c_1.ParentID + 1 as c1,
				c_1.ParentID
			FROM
				Child c_1
			FETCH NEXT :take ROWS ONLY
		) t1

