﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "DropTableTest"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE "DropTableTest"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

