BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 100

SELECT
	t2."RowNumber",
	n."PersonID"
FROM
	(
		SELECT
			t1.ID,
			t1."RowNumber"
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
			) t1
		WHERE
			ROWNUM <= :take
	) t2
		INNER JOIN "Person" n ON t2.ID = n."PersonID"
WHERE
	n."PersonID" = 2 AND ROWNUM <= 2

