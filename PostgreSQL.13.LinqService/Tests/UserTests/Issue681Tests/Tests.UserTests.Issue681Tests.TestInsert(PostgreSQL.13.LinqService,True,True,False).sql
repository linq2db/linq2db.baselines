﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

