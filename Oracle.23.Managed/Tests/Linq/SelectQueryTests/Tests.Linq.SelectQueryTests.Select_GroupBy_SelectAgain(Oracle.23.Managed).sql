-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	COUNT(*) OVER(),
	x."Key_1",
	x."Count_1",
	x."HighestFirstName"
FROM
	(
		SELECT
			summary."LastName" as "Key_1",
			COUNT(*) as "Count_1",
			MAX(summary."FirstName") as "HighestFirstName"
		FROM
			"Person" summary
		GROUP BY
			summary."LastName"
		HAVING
			COUNT(*) > 5
		OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 
	) x

