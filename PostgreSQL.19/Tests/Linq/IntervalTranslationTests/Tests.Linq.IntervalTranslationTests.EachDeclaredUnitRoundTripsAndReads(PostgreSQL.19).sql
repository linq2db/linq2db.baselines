-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."InDays",
	t1."InMilliseconds",
	t1."InNanoseconds"
FROM
	"UnitSpreadRow" t1
LIMIT 2

-- PostgreSQL.19 PostgreSQL12
SELECT
	(r."InDays"::BigInt * 864000000000)::Float / 36000000000,
	Floor((((r."InMilliseconds"::BigInt * 10000) / 10000000)::decimal % 60)::decimal)::Int
FROM
	"UnitSpreadRow" r
LIMIT 2

