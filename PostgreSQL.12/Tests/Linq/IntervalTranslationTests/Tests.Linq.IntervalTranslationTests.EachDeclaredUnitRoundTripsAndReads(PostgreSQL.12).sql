-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InDays Bigint -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds Bigint -- Int64
SET     @InMilliseconds = 3723456
DECLARE @InNanoseconds Bigint -- Int64
SET     @InNanoseconds = 7000123400

INSERT INTO "UnitSpreadRow"
(
	"Id",
	"InDays",
	"InMilliseconds",
	"InNanoseconds"
)
VALUES
(
	:Id,
	:InDays,
	:InMilliseconds,
	:InNanoseconds
)

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."InDays",
	t1."InMilliseconds",
	t1."InNanoseconds"
FROM
	"UnitSpreadRow" t1
LIMIT 2

-- PostgreSQL.12 PostgreSQL12
SELECT
	(r."InDays" * 24)::Float,
	Floor(((r."InMilliseconds" / 1000)::decimal % 60)::decimal)::Int
FROM
	"UnitSpreadRow" r
LIMIT 2

