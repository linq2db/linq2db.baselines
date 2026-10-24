-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InDays Bigint -- Int64
SET     @InDays = 0
DECLARE @InMilliseconds Bigint -- Int64
SET     @InMilliseconds = 7000
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

-- PostgreSQL.9.5 PostgreSQL
SELECT
	r."InNanoseconds"
FROM
	"UnitSpreadRow" r
LIMIT 2

