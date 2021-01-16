BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1279Table"
(
	"Id"      Int      GENERATED ALWAYS AS IDENTITY NOT NULL,
	"CharFld" NChar(1)                              NOT NULL,

	CONSTRAINT "PK_Issue1279Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @CharFld Char(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO "Issue1279Table"
(
	"CharFld"
)
VALUES
(
	@CharFld
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1279Table"

