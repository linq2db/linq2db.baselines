﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableTime"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableTime"
(
	"Id"   Int       NOT NULL,
	"Time" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."Time"
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
	Cast(NULL as TimeStamp)
FROM
	"TableTime" x_3

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableTime"

