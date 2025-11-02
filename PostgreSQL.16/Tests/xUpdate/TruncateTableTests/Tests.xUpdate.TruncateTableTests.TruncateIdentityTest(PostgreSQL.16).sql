-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestIdTrun"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE "TestIdTrun"
(
	"ID"     SERIAL   NOT NULL,
	"Field1" decimal  NOT NULL,

	CONSTRAINT "PK_TestIdTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t1."ID",
	t1."Field1"
FROM
	"TestIdTrun" t1
ORDER BY
	t1."ID"
LIMIT 2 OFFSET :skip 

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

TRUNCATE TABLE "TestIdTrun" RESTART IDENTITY

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t1."ID",
	t1."Field1"
FROM
	"TestIdTrun" t1
ORDER BY
	t1."ID"
LIMIT 2 OFFSET :skip 

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE "TestIdTrun"

