BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 100

SELECT
	t1.ID,
	t1."sort_1"
FROM
	(
		SELECT
			r."PersonID" as ID,
			r."PersonID" as "sort_1"
		FROM
			"Person" r
		GROUP BY
			r."PersonID",
			r."PersonID"
		ORDER BY
			r."PersonID"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1.ID

