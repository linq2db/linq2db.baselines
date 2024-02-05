BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			d."Taxonomy"
		FROM
			"Doctor" d
		WHERE
			t1."PersonID" = d."PersonID"
		FETCH NEXT :take ROWS ONLY
	)
FROM
	"Doctor" t1
GROUP BY
	t1."PersonID"

