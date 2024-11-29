BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1855Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue1855Table"
		(
			"Id"                         Int                      NOT NULL,
			"SomeDateTimeOffset"         timestamp with time zone NOT NULL,
			"SomeNullableDateTimeOffset" timestamp with time zone     NULL,

			CONSTRAINT "PK_Issue1855Table" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1
DECLARE @clientSideIn TimeStampTZ -- DateTimeOffset
SET     @clientSideIn = 08/08/2019 08:08:18 +00:00

SELECT
	r."Id",
	r."SomeDateTimeOffset",
	r."SomeNullableDateTimeOffset"
FROM
	"Issue1855Table" r
WHERE
	r."Id" = :id AND :clientSideIn <> r."SomeDateTimeOffset"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1855Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

