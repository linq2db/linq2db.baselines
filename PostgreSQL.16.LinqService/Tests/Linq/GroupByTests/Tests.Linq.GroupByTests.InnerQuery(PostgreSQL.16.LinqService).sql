﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			d."Taxonomy"
		FROM
			"Doctor" d
		WHERE
			t1."PersonID" = d."PersonID"
		LIMIT :take
	)
FROM
	"Doctor" t1
GROUP BY
	t1."PersonID"

