BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(1,100)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."Id", 
	"t"."Value", 
	"s"."c1"
FROM
	"SampleClass" "t"
		INNER JOIN ( 
			SELECT
				1 as "c1"
			FROM SYSIBM.SYSDUMMY1
		) "s" ON "s"."c1" = "t"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "SampleClass"

