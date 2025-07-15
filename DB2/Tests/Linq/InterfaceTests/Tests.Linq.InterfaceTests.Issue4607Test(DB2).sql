BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "SomeTable"
(
	"ClassProp",
	"Interface"
)
VALUES
(
	1,
	0
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"
FETCH NEXT 2 ROWS ONLY

