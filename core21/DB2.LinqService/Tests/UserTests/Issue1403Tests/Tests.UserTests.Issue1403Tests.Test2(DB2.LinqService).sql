BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1403Tests_2"
(
	"event_id"          Int           NOT NULL,
	"event_description" NVarChar(255) NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_2" PRIMARY KEY ("event_id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue1403Tests_2"
(
	"event_id",
	"event_description"
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."event_id",
	"t1"."event_description"
FROM
	"Issue1403Tests_2" "t1"
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1403Tests_2"

