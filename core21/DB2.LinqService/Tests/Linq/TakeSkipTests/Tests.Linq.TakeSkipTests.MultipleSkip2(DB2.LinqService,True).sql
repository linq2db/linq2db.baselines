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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3

SELECT
	"t2"."Value_1"
FROM
	(
		SELECT
			"t1"."Value" as "Value_1",
			ROW_NUMBER() OVER (ORDER BY "t1"."Value") as RN
		FROM
			"TakeSkipClass" "t1"
	) "t2"
WHERE
	"t2".RN > @skip

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 4

SELECT
	"t2"."Value_1"
FROM
	(
		SELECT
			"t1"."Value" as "Value_1",
			ROW_NUMBER() OVER (ORDER BY "t1"."Value") as RN
		FROM
			"TakeSkipClass" "t1"
	) "t2"
WHERE
	"t2".RN > @skip

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TakeSkipClass"

