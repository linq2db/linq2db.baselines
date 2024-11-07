BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1855Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1855Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

