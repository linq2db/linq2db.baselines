﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	COUNT(*) OVER() as "c1",
	summary."LastName",
	summary."Count_1",
	summary.MAX_1
FROM
	(
		SELECT
			COUNT(*) as "Count_1",
			group_1."LastName",
			MAX(group_1."FirstName") as MAX_1
		FROM
			"Person" group_1
		GROUP BY
			group_1."LastName"
	) summary
WHERE
	summary."Count_1" > 5
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

