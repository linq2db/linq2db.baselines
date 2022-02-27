BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	COUNT(left_1.ParentID),
	COUNT(p.ParentID),
	COUNT(*)
FROM
	Parent left_1
		FULL JOIN Parent p ON p.ParentID = left_1.ParentID
FETCH NEXT :take ROWS ONLY

