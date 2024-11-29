BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Request')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Request"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Request')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Request"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Request')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Request"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Metric')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Metric"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Metric')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Metric"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Metric')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Metric"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

SELECT
	(
		SELECT FIRST 1
			CASE
				WHEN "a_Metrics"."Value" IS NOT NULL THEN '1'
				ELSE '0'
			END
		FROM
			"Metric" "a_Metrics"
		WHERE
			"a"."Id" = "a_Metrics"."RequestId"
	),
	(
		SELECT FIRST 1
			"a_Metrics_1"."Value"
		FROM
			"Metric" "a_Metrics_1"
		WHERE
			"a"."Id" = "a_Metrics_1"."RequestId"
	)
FROM
	"Request" "a"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Metric')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Metric"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Metric')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Metric"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Metric')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Metric"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Request')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Request"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Request')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Request"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Request')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Request"';
END

