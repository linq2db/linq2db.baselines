﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "DropTableTest"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO testdata.public."DropTableTest"
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
	testdata.public."DropTableTest" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE testdata.public."DropTableTest"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID"
FROM
	testdata.public."DropTableTest" t1

