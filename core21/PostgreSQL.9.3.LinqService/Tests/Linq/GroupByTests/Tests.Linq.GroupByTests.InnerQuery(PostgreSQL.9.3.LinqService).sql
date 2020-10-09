BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			"keyParam"."Taxonomy"
		FROM
			"Doctor" "keyParam"
		WHERE
			t1."PersonID" = "keyParam"."PersonID"
		LIMIT :take
	)
FROM
	"Doctor" t1
GROUP BY
	t1."PersonID"

