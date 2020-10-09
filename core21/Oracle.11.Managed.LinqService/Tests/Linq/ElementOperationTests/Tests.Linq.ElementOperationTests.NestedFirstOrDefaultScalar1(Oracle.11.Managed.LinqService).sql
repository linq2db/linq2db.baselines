BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			p.ChildID
		FROM
			Child p
		WHERE
			ROWNUM <= :take
	)
FROM
	Parent p_1

