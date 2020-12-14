BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue1110TB"
(
	"Id"        Int       NOT NULL,
	"TimeStamp" timestamp NOT NULL,

	CONSTRAINT "PK_Issue1110TB" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 10
DECLARE @TimeStamp_1 TimeStamp -- DateTime
SET     @TimeStamp_1 = TO_TIMESTAMP('2020-02-29 17:54:55.123123', 'YYYY-MM-DD HH24:MI:SS.FF6')

INSERT INTO "Issue1110TB"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	:Id,
	:TimeStamp_1
)

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Issue1110TB"

