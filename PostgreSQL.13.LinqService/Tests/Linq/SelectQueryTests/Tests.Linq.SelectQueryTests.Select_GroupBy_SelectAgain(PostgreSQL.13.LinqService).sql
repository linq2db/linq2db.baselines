BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	COUNT(*) OVER(),
	x."Key_1",
	x."Count_1",
	x."MAX_1"
FROM
	(
		SELECT
			summary."LastName" as "Key_1",
			COUNT(*) as "Count_1",
			MAX(summary."FirstName") as "MAX_1"
		FROM
			"Person" summary
		GROUP BY
			summary."LastName"
		HAVING
			COUNT(*) > 5
		LIMIT :take OFFSET :skip 
	) x

