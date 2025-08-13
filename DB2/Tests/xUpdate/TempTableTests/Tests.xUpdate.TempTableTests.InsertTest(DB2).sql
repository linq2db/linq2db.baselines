BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Table2"
(
	ID
)
SELECT
	"t".ID
FROM
	"Table1" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Date"
FROM
	"Table2" "t1"

