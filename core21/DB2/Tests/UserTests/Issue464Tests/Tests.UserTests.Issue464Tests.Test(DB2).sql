BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue464"
(
	"Id"    Int NOT NULL,
	"Value" Int     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue464"
(
	"Id",
	"Value"
)
VALUES
(1,1),
(2,2),
(3,3)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."Id", 
	"t1"."Value"
FROM
	"Issue464" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue464"

