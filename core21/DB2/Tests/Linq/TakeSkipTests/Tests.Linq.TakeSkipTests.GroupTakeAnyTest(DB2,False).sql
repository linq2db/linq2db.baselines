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
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE WHEN EXISTS(
		SELECT
			"t1"."Value"
		FROM
			"TakeSkipClass" "t1"
		GROUP BY
			"t1"."Value"
		HAVING
			Count(*) > 1
		FETCH FIRST 1 ROWS ONLY
	) THEN 1 ELSE 0 END
FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TakeSkipClass"

