-- PostgreSQL.19 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InDays Bigint -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds Bigint -- Int64
SET     @InMilliseconds = 172800000
DECLARE @InNanoseconds Bigint -- Int64
SET     @InNanoseconds = 172800000000000

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
	r."Id"
FROM
	"UnitSpreadRow" r
WHERE
	r."InDays" * 86400000 IN (
		SELECT
			x."InMilliseconds"
		FROM
			"UnitSpreadRow" x
	)

-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Id"
FROM
	"UnitSpreadRow" r
WHERE
	r."InMilliseconds" IN (
		SELECT
			x."InDays" * 86400000
		FROM
			"UnitSpreadRow" x
	)

