BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

