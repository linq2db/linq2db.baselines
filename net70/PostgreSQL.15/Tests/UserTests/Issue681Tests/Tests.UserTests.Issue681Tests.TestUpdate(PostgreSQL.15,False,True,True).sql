﻿BeforeExecute
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
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	testdata."public"."Issue681Table"
SET
	"Value" = :Value
WHERE
	testdata."public"."Issue681Table"."ID" = :ID

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table"

