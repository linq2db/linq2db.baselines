﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	COUNT(*) OVER(),
	summary."LastName",
	summary."Count_1",
	summary."MAX_1"
FROM
	(
		SELECT
			COUNT(*) as "Count_1",
			group_1."LastName",
			MAX(group_1."FirstName") as "MAX_1"
		FROM
			"Person" group_1
		GROUP BY
			group_1."LastName"
	) summary
WHERE
	summary."Count_1" > 5
LIMIT :take OFFSET :skip 

