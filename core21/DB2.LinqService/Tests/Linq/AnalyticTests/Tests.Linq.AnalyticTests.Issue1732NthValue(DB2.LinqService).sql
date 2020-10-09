BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Position"
(
	"Group" Int NOT NULL,
	"Order" Int NOT NULL,
	"Id"    Int     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(7,10,5),
(7,20,6),
(7,30,NULL),
(7,40,NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @group_1 Integer(4) -- Int32
SET     @group_1 = 7

SELECT 
	"p"."Id", 
	NTH_VALUE("p"."Id", 2) FROM FIRST OVER(ORDER BY "p"."Order" DESC)
FROM
	"Position" "p"
WHERE
	"p"."Group" = @group_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Position"

