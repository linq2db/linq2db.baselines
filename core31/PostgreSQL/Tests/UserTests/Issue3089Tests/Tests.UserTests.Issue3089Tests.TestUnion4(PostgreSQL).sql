BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TableTime"
(
	"Id"   Int       NOT NULL,
	"Time" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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
	Cast(NULL as TimeStamp)
FROM
	"TableTime" x_2
UNION
SELECT
	x_3."Time"
FROM
	"TableTime" x_3

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableTime"

