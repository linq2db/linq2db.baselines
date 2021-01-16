BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "aa"
(
	"bb" Int           NOT NULL,
	"cc" NVarChar(255)     NULL,

	CONSTRAINT "PK_aa" PRIMARY KEY ("bb")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @cc VarChar(5) -- String
SET     @cc = 'hallo'
DECLARE @bb Integer(4) -- Int32
SET     @bb = 99

INSERT INTO "aa"
(
	"cc",
	"bb"
)
VALUES
(
	@cc,
	@bb
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "aa"

