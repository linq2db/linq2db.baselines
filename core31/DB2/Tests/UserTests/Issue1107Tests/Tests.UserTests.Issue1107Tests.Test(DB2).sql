BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1107TB"
(
	"Id"       Int       NOT NULL,
	"TestDate" timestamp NOT NULL,

	CONSTRAINT "PK_Issue1107TB" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue1107TB"
(
	"Id",
	"TestDate"
)
VALUES
(0,'2018-01-01-00.00.00.000000')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1107TB"

