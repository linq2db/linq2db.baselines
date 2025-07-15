BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Date Date(20)
SET     @Date = '2021-01-01-00.00.00.000000'

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
(
	@Date
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
FETCH NEXT 2 ROWS ONLY

