-- PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InDays Bigint -- Int64
SET     @InDays = 0
DECLARE @InMilliseconds Bigint -- Int64
SET     @InMilliseconds = 0
DECLARE @InNanoseconds Bigint -- Int64
SET     @InNanoseconds = 7000000000

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

-- PostgreSQL.13 PostgreSQL12
SELECT
	r."InNanoseconds"
FROM
	"UnitSpreadRow" r
LIMIT 2

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."InDays",
	t1."InMilliseconds",
	t1."InNanoseconds"
FROM
	"UnitSpreadRow" t1
LIMIT 2

