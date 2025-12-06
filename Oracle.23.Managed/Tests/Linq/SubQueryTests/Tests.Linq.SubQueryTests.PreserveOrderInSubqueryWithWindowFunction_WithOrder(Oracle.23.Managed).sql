-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 100

SELECT
	t1."RowNumber",
	r_1."PersonID" as ID
FROM
	(
		SELECT
			r."PersonID" as ID,
			ROW_NUMBER() OVER(ORDER BY (
				SELECT
					'unordered'
				FROM SYS.DUAL
			)) as "RowNumber"
		FROM
			"Person" r
		ORDER BY
			r."FirstName"
		FETCH NEXT :take ROWS ONLY
	) t1
		INNER JOIN "Person" r_1 ON t1.ID = r_1."PersonID"
WHERE
	r_1."PersonID" = 2
FETCH NEXT 2 ROWS ONLY

