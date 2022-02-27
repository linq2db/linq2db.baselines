BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1110TB"
(
	"Id"        Int       NOT NULL,
	"TimeStamp" timestamp NOT NULL,

	CONSTRAINT "PK_Issue1110TB" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1 Timestamp(20) -- DateTime
SET     @TimeStamp_1 = '2020-02-29-17.54.55.123123'

INSERT INTO "Issue1110TB"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	@Id,
	@TimeStamp_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1110TB"

