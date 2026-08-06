-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset TimeStampTZ -- DateTimeOffset
SET     @SomeDateTimeOffset = 08/08/2019 08:08:08 +00:00
DECLARE @SomeNullableDateTimeOffset TimeStampTZ -- DateTimeOffset
SET     @SomeNullableDateTimeOffset = 08/08/2019 08:08:08 +00:00

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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset TimeStampTZ -- DateTimeOffset
SET     @SomeDateTimeOffset = 08/08/2019 08:08:08 +00:00

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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @clientSideIn TimeStampTZ -- DateTimeOffset
SET     @clientSideIn = 08/08/2019 08:08:18 +00:00

SELECT
	r."Id",
	r."SomeDateTimeOffset",
	r."SomeNullableDateTimeOffset"
FROM
	"Issue1855Table" r
WHERE
	:clientSideIn <> r."SomeNullableDateTimeOffset" OR
	r."SomeNullableDateTimeOffset" IS NULL

