-- PostgreSQL.13 PostgreSQL12

DROP TABLE IF EXISTS "TestIdTrun"

-- PostgreSQL.13 PostgreSQL12

CREATE TABLE "TestIdTrun"
(
	"ID"     SERIAL   NOT NULL,
	"Field1" decimal  NOT NULL,

	CONSTRAINT "PK_TestIdTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.13 PostgreSQL12

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.13 PostgreSQL12

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12

TRUNCATE TABLE "TestIdTrun" RESTART IDENTITY

-- PostgreSQL.13 PostgreSQL12

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.13 PostgreSQL12

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12

DROP TABLE "TestIdTrun"

