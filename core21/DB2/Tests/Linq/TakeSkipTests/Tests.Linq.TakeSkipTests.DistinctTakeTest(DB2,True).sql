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
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT 
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
FETCH FIRST 3 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TakeSkipClass"

