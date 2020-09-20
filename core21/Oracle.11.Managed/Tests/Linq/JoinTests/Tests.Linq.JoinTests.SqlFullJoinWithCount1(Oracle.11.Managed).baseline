BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	COUNT(left_1.ParentID),
	COUNT(p.ParentID),
	COUNT(*)
FROM
	Parent left_1
		FULL JOIN Parent p ON p.ParentID = left_1.ParentID
WHERE
	ROWNUM <= :take

