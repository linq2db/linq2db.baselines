﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	t3."F2"
FROM
	(
		SELECT DISTINCT
			t2."F1",
			t2."F2"
		FROM
			(
				SELECT
					t1."F1",
					t1."F2"
				FROM
					"DistinctOrderByTable" t1
				ORDER BY
					t1."F3" DESC
				LIMIT :take
			) t2
	) t3

