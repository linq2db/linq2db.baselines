﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table3"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table3"
(
	"ProcessID"   Int  NOT NULL,
	"ProcessName" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(1,'One'),
(2,'Two'),
(3,'Three'),
(4,'Four')

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	LEAD(p."ProcessName", 2) OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	LEAD(p."ProcessName") OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	LAG(p."ProcessName", 2) OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	LAG(p."ProcessName") OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table3"

