BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 10

SELECT
	t1.ID,
	t1."Id2"
FROM
	(
		SELECT
			a."PersonID" as "Id2",
			a."PersonID" as ID
		FROM
			"Person" a
		FETCH NEXT :take ROWS ONLY
	) t1
ORDER BY
	t1."Id2"

