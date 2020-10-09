BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			ch.ParentID
		FROM
			Child ch
		WHERE
			ch.ParentID = p.ParentID AND ROWNUM <= :take
	)
FROM
	Parent p
WHERE
	p.ParentID = 1

