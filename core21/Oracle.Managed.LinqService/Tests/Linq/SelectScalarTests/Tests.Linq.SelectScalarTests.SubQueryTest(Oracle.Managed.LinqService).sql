BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			p.Value1
		FROM
			Parent p
		FETCH NEXT :take ROWS ONLY
	)
FROM SYS.DUAL

