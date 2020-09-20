BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CURRENT_TIMESTAMP + "t"."Value" Day,
	CURRENT_TIMESTAMP + 2 Day
FROM
	"SampleClass" "t"
WHERE
	"t"."Value" = 1
UNION
SELECT
	"t1"."Value1",
	"t1"."Value2"
FROM
	(
		SELECT
			CURRENT_TIMESTAMP + 3 Day as "Value1",
			CURRENT_TIMESTAMP + 4 Day as "Value2"
		FROM SYSIBM.SYSDUMMY1
	) "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"v"."Value2"
FROM
	(
		SELECT
			CURRENT_TIMESTAMP + "t"."Value" Day as "Value1",
			CURRENT_TIMESTAMP + 2 Day as "Value2"
		FROM
			"SampleClass" "t"
		WHERE
			"t"."Value" = 1
		UNION
		SELECT
			"t1"."Value1",
			"t1"."Value2"
		FROM
			(
				SELECT
					CURRENT_TIMESTAMP + 3 Day as "Value1",
					CURRENT_TIMESTAMP + 4 Day as "Value2"
				FROM SYSIBM.SYSDUMMY1
			) "t1"
	) "v"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "SampleClass"

