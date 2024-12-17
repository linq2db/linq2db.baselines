BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleData"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SampleData"
			(
				"Id"     Int NOT NULL,
				"Value1" Int NOT NULL,
				"Value2" Int NOT NULL,
				"Value3" Int NOT NULL,

				CONSTRAINT "PK_SampleData" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
SELECT 1,10,100,1000 FROM rdb$database UNION ALL
SELECT 2,20,200,2000 FROM rdb$database UNION ALL
SELECT 3,30,300,3000 FROM rdb$database UNION ALL
SELECT 4,40,400,4000 FROM rdb$database UNION ALL
SELECT 5,50,500,5000 FROM rdb$database UNION ALL
SELECT 6,60,600,6000 FROM rdb$database UNION ALL
SELECT 7,70,700,7000 FROM rdb$database UNION ALL
SELECT 8,80,800,8000 FROM rdb$database UNION ALL
SELECT 9,90,900,9000 FROM rdb$database UNION ALL
SELECT 10,100,1000,10000 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT DISTINCT
	"r"."Value1"
FROM
	"SampleData" "r"
WHERE
	Mod("r"."Id", 2) = 0 AND  NOT EXISTS (
		SELECT
			*
		FROM
			"SampleData" "r_1"
		WHERE
			Mod("r_1"."Id", 4) = 0 AND "r"."Id" = "r_1"."Id" AND
			"r"."Value1" = "r_1"."Value2" / 10
	) AND
	 NOT EXISTS (
		SELECT
			*
		FROM
			"SampleData" "r_2"
		WHERE
			Mod("r_2"."Id", 6) = 0 AND "r"."Id" = "r_2"."Id" AND
			"r"."Value1" = "r_2"."Value1"
	)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleData"';
END

