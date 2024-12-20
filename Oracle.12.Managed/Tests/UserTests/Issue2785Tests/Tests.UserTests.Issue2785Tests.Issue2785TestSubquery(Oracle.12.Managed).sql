BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 10

SELECT
	t1.ID_1,
	t1.ID
FROM
	(
		SELECT
			a."PersonID" as ID,
			a."PersonID" as ID_1
		FROM
			"Person" a
		FETCH NEXT :take ROWS ONLY
	) t1
ORDER BY
	t1.ID

