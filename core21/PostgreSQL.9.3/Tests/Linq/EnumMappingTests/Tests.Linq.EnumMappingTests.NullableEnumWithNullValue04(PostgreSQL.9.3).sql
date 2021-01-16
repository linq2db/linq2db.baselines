BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 105

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :Id

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @Value_1 Text(2) -- String
SET     @Value_1 = '11'

INSERT INTO "LinqDataTypes"
(
	"ID",
	"StringValue"
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @Value_1 Text(2) -- String
SET     @Value_1 = '22'

INSERT INTO "LinqDataTypes"
(
	"ID",
	"StringValue"
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 103
DECLARE @Value_1 Text -- String
SET     @Value_1 = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"StringValue"
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 104
DECLARE @Value_1 Text -- String
SET     @Value_1 = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"StringValue"
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 105

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :Id

