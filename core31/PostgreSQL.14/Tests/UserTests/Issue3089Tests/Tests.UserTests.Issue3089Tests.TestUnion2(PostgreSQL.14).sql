﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableTime"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableTime"
(
	"Id"   Int       NOT NULL,
	"Time" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(NULL as TimeStamp)
FROM
	"TableTime" x
UNION
SELECT
	x_1."Time"
FROM
	"TableTime" x_1
UNION
SELECT
	Cast(NULL as TimeStamp)
FROM
	"TableTime" x_2
UNION
SELECT
	Cast(NULL as TimeStamp)
FROM
	"TableTime" x_3

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableTime"

