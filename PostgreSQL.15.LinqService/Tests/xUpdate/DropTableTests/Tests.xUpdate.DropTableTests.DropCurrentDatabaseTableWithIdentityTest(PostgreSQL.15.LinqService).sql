﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DropTableTestID"

BeforeExecute
--  PostgreSQL.15 PostgreSQL

CREATE TABLE "DropTableTestID"
(
	"ID"  SERIAL  NOT NULL,
	"ID1" Int     NOT NULL,

	CONSTRAINT "PK_DropTableTestID" PRIMARY KEY ("ID")
)

BeforeExecute
--  PostgreSQL.15 PostgreSQL

INSERT INTO "DropTableTestID"
(
	"ID1"
)
VALUES
(
	2
)

BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	t."ID",
	t."ID1"
FROM
	"DropTableTestID" t

BeforeExecute
--  PostgreSQL.15 PostgreSQL

DROP TABLE "DropTableTestID"

BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."ID1"
FROM
	"DropTableTestID" t1

