﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1403Tests_3"
(
	"event_description" NVarChar(255) NOT NULL,
	"event_id"          Int           NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_3" PRIMARY KEY ("event_id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue1403Tests_3"
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
	"t1"."event_description",
	"t1"."event_id"
FROM
	"Issue1403Tests_3" "t1"
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1403Tests_3"';
END

