﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TableTime"
(
	"Id"   Int       NOT NULL,
	"Time" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t2."Time_1"
FROM
	(
		SELECT
			t1."Time_1"
		FROM
			(
				SELECT
					Cast(NULL as TimeStamp) as "Time_1"
				FROM
					"TableTime" x
				UNION
				SELECT
					x_1."Time" as "Time_1"
				FROM
					"TableTime" x_1
			) t1
		UNION
		SELECT
			Cast(NULL as TimeStamp) as "Time_1"
		FROM
			"TableTime" x_2
	) t2
UNION
SELECT
	Cast(NULL as TimeStamp)
FROM
	"TableTime" x_3

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableTime"

