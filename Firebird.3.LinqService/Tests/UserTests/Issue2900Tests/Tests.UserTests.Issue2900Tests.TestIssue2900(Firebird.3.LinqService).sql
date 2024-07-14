BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Request')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Request"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Request')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Request"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Request')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Request"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Request')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Request"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_Request" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Request')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Request"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Request')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Request" FOR "Request"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Request", 1);
			END
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Metric')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Metric"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Metric')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Metric"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Metric')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Metric"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Metric')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Metric"
			(
				"Id"        Int    NOT NULL,
				"RequestId" Int    NOT NULL,
				"Value"     Float,

				CONSTRAINT "PK_Metric" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Metric')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Metric"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Metric')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Metric" FOR "Metric"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Metric", 1);
			END
		';
END

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."not_null",
	"t1"."Value_1"
FROM
	"Request" "a"
		LEFT JOIN (
			SELECT
				"a_Metrics"."Value" as "Value_1",
				1 as "not_null",
				ROW_NUMBER() OVER (PARTITION BY "a_Metrics"."RequestId" ORDER BY "a_Metrics"."RequestId") as "rn",
				"a_Metrics"."RequestId"
			FROM
				"Metric" "a_Metrics"
		) "t1" ON "a"."Id" = "t1"."RequestId" AND "t1"."rn" <= 1

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Metric')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Metric"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Metric')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Metric"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Metric')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Metric"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Request')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Request"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Request')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Request"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Request')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Request"';
END

