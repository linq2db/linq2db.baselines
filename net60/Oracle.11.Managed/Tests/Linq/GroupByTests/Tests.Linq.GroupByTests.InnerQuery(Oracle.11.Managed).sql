BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			d."Taxonomy"
		FROM
			"Doctor" d
		WHERE
			t1."PersonID" = d."PersonID" AND ROWNUM <= :take
	)
FROM
	"Doctor" t1
GROUP BY
	t1."PersonID"

