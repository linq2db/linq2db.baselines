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
DECLARE @bb Integer(4) -- Int32
SET     @bb = 99
DECLARE @cc VarChar(5) -- String
SET     @cc = 'hallo'

INSERT INTO "aa"
(
	"bb",
	"cc"
)
VALUES
(
	@bb,
	@cc
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."bb",
	"t1"."cc"
FROM
	"aa" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "aa"

