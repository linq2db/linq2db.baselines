﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 105

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @Value Integer -- Int32
SET     @Value = 11

INSERT INTO "LinqDataTypes"
(
	"ID",
	"IntValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO "LinqDataTypes"
(
	"ID",
	"IntValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 103
DECLARE @Value Integer -- Int32
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"IntValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 104
DECLARE @Value Integer -- Int32
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"IntValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."IntValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND
	r."ID" IS NOT NULL AND
	r."ID" <= 104 AND
	r."ID" IS NOT NULL
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."IntValue",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" <= 104
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 105

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

