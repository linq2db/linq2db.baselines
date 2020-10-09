BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			keyParam.Taxonomy
		FROM
			Doctor keyParam
		WHERE
			t1.PersonID = keyParam.PersonID
		FETCH NEXT :take ROWS ONLY
	)
FROM
	Doctor t1
GROUP BY
	t1.PersonID

