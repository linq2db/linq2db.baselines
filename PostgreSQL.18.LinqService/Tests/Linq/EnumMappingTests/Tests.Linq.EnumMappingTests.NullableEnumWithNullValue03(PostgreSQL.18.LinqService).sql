﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 104

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @Value Text(2) -- String
SET     @Value = '11'

INSERT INTO "LinqDataTypes"
(
	"ID",
	"StringValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @Value Text(2) -- String
SET     @Value = '22'

INSERT INTO "LinqDataTypes"
(
	"ID",
	"StringValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 103
DECLARE @Value Text -- String
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"StringValue"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	r."ID",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" <= 103
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	r."ID",
	r."IntValue",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" <= 103
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 104

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

