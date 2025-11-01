-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset TimestampTz -- DateTime
SET     @SomeDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'
DECLARE @SomeNullableDateTimeOffset TimestampTz -- DateTime
SET     @SomeNullableDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'

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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset TimestampTz -- DateTime
SET     @SomeDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'

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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @interval Integer -- Int32
SET     @interval = 10
DECLARE @clientSideIn TimestampTz -- DateTime
SET     @clientSideIn = '2019-08-08T08:08:18.0000000+00:00'

SELECT
	r."Id",
	r."SomeDateTimeOffset",
	r."SomeNullableDateTimeOffset"
FROM
	"Issue1855Table" r
WHERE
	r."SomeNullableDateTimeOffset" + :interval * Interval '1 Second' >= :clientSideIn

