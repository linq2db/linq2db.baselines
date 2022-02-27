BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "TestIdTrun"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TestIdTrun"
(
	"ID"     SERIAL   NOT NULL,
	"Field1" Decimal  NOT NULL,

	CONSTRAINT "PK_TestIdTrun" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t1."ID",
	t1."Field1"
FROM
	"TestIdTrun" t1
ORDER BY
	t1."ID"
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

TRUNCATE TABLE "TestIdTrun" CONTINUE IDENTITY

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t1."ID",
	t1."Field1"
FROM
	"TestIdTrun" t1
ORDER BY
	t1."ID"
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "TestIdTrun"

