BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableTime"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableTime"
(
	"Id"   Int       NOT NULL,
	"Time" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	NULL::TimeStamp
FROM
	"TableTime" x
UNION
SELECT
	x_1."Time"
FROM
	"TableTime" x_1
UNION
SELECT
	NULL::TimeStamp
FROM
	"TableTime" x_2
UNION
SELECT
	NULL::TimeStamp
FROM
	"TableTime" x_3

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableTime"

