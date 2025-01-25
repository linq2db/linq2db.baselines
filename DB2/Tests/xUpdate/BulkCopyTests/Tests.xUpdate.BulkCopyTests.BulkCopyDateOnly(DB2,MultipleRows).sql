BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
('2021-01-01')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
FETCH NEXT 2 ROWS ONLY

