-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Timestamp -- DateTime2
SET     @Value = '2026-06-01 10:00:00'::timestamp
DECLARE @Day Date
SET     @Day = '2026-06-01'::date
DECLARE @Wide Timestamp -- DateTime2
SET     @Wide = '1969-01-01 00:00:00.500'::timestamp

INSERT INTO "CoarseDateShapesRow"
(
	"Id",
	"Value",
	"Day",
	"Wide"
)
VALUES
(
	:Id,
	:Value,
	:Day,
	:Wide
)

-- PostgreSQL.15 PostgreSQL12
SELECT
	To_Char(r."Wide", 'MS')::Int
FROM
	"CoarseDateShapesRow" r
LIMIT 2

-- PostgreSQL.15 PostgreSQL12
SELECT
	To_Char(r."Wide", 'MS')::Int
FROM
	"CoarseDateShapesRow" r
LIMIT 2

