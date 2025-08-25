BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 100

SELECT
	t1."RowNumber",
	n."PersonID" as ID
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
		INNER JOIN "Person" n ON t1.ID = n."PersonID"
WHERE
	n."PersonID" = 2
FETCH NEXT 2 ROWS ONLY

