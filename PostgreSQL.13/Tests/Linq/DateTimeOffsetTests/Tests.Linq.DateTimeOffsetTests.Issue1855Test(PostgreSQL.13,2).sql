-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset TimestampTz -- DateTimeOffset
SET     @SomeDateTimeOffset = '2019-08-08 08:08:08.000000+00:00'::timestamptz
DECLARE @SomeNullableDateTimeOffset TimestampTz -- DateTimeOffset
SET     @SomeNullableDateTimeOffset = '2019-08-08 08:08:08.000000+00:00'::timestamptz

INSERT INTO "Issue1855Table"
(
	"Id",
	"SomeDateTimeOffset",
	"SomeNullableDateTimeOffset"
)
VALUES
(
	:Id,
	:SomeDateTimeOffset,
	:SomeNullableDateTimeOffset
)

-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset TimestampTz -- DateTimeOffset
SET     @SomeDateTimeOffset = '2019-08-08 08:08:08.000000+00:00'::timestamptz

INSERT INTO "Issue1855Table"
(
	"Id",
	"SomeDateTimeOffset"
)
VALUES
(
	:Id,
	:SomeDateTimeOffset
)

-- PostgreSQL.13 PostgreSQL
DECLARE @clientSideIn TimestampTz -- DateTimeOffset
SET     @clientSideIn = '2019-08-08 08:08:18.000000+00:00'::timestamptz

SELECT
	r."Id",
	r."SomeDateTimeOffset",
	r."SomeNullableDateTimeOffset"
FROM
	"Issue1855Table" r
WHERE
	:clientSideIn <> r."SomeNullableDateTimeOffset" OR
	r."SomeNullableDateTimeOffset" IS NULL

