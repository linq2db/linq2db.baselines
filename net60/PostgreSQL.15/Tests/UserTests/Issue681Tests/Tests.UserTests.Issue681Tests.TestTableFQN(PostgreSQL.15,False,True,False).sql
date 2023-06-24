BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue681Table"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table4"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue681Table4"
(
	"ID"    SERIAL  NOT NULL,
	"Value" Int     NOT NULL,

	CONSTRAINT "PK_Issue681Table4" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "Issue681Table"
(
	"ID",
	"Value"
)
VALUES
(
	:ID,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 123
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Issue681Table"
SET
	"Value" = :Value
WHERE
	"Issue681Table"."ID" = :ID

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	"Issue681Table" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	"Issue681Table" t1
WHERE
	t1."ID" = :ID

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 123

INSERT INTO "Issue681Table" AS t1
(
	"ID",
	"Value"
)
VALUES
(
	:ID,
	:Value
)
ON CONFLICT ("ID") DO UPDATE SET
	"Value" = :Value

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "Issue681Table4"
(
	"Value"
)
VALUES
(
	:Value
)
RETURNING 
	"ID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE "Issue681Table2"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table2" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE "Issue681Table2"

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

CREATE TABLE "Issue681Table3"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table3" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

DROP TABLE "Issue681Table3"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table4"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table"

