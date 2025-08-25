BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TestIdTrun"

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

CREATE TABLE "TestIdTrun"
(
	"ID"     SERIAL   NOT NULL,
	"Field1" decimal  NOT NULL,

	CONSTRAINT "PK_TestIdTrun" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

TRUNCATE TABLE "TestIdTrun" RESTART IDENTITY

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DROP TABLE "TestIdTrun"

