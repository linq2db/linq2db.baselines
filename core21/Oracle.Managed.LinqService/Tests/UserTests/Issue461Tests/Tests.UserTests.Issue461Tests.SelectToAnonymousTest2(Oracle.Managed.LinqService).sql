BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.ParentId,
	t1.Id
FROM
	Parent sep
		OUTER APPLY (
			SELECT
				l.ParentID + 1 as Id,
				l.ParentID as ParentId
			FROM
				Child l
			FETCH NEXT :take ROWS ONLY
		) t1

