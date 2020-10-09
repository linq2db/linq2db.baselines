BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
SELECT 1,100 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t"."Id", 
	"t"."Value", 
	"s"."c1"
FROM
	"SampleClass" "t"
		INNER JOIN ( 
			SELECT
				1 as "c1"
			FROM rdb$database
		) "s" ON "s"."c1" = "t"."Id"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "SampleClass"

