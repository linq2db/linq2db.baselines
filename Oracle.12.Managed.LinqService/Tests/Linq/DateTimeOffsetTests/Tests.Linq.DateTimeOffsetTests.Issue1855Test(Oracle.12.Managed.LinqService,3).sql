BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
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

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
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

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @clientSideIn TimeStampTZ -- DateTimeOffset
SET     @clientSideIn = 08/08/2019 08:08:18 +00:00

SELECT
	r."Id",
	r."SomeDateTimeOffset",
	r."SomeNullableDateTimeOffset"
FROM
	"Issue1855Table" r
WHERE
	:clientSideIn <> r."SomeDateTimeOffset"

