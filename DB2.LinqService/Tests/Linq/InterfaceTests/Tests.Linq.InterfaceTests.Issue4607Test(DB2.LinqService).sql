BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

INSERT INTO "SomeTable"
(
	"Id",
	"ClassProp",
	"Interface"
)
VALUES
(
	1,
	1,
	0
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"
FETCH NEXT 2 ROWS ONLY

