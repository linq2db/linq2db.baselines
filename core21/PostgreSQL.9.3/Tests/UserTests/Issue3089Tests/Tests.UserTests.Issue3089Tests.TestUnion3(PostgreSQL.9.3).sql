BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TableTime"
(
	"Id"   Int       NOT NULL,
	"Time" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Cast(NULL as TimeStamp)
FROM
	"TableTime" x
UNION
SELECT
	Cast(NULL as TimeStamp)
FROM
	"TableTime" x_1
UNION
SELECT
	x_2."Time"
FROM
	"TableTime" x_2
UNION
SELECT
	Cast(NULL as TimeStamp)
FROM
	"TableTime" x_3

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "TableTime"

