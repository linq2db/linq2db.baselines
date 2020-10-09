BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
('Value1'),
('Value2'),
('Value3'),
('Value4'),
('Value5'),
('Value6'),
('Value7'),
('Value8')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TakeSkipClass"

