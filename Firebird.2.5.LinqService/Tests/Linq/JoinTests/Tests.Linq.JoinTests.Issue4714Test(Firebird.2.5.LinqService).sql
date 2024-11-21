BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Sample')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Sample"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Sample')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Sample"
			(
				"SampleId" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Source')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Source"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Source')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Source"
			(
				"Key1" Int NOT NULL,
				"Key2" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectionMap')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectionMap"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectionMap')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SelectionMap"
			(
				"Key1"              Int             NOT NULL,
				"Key2"              Int             NOT NULL,
				"SelectionProperty" Decimal(18, 10) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'YearMap')) THEN
		EXECUTE STATEMENT 'DROP TABLE "YearMap"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'YearMap')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "YearMap"
			(
				"StartDate" TimeStamp NOT NULL,
				"EndDate"   TimeStamp NOT NULL,
				"Year"      Int       NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"source_2"."Id",
	"year_1"."Year",
	"year_1"."StartDate",
	"year_1"."EndDate"
FROM
	"YearMap" "year_1"
		CROSS JOIN (
			SELECT
				"entity"."SampleId" as "Id"
			FROM
				"Source" "source_1"
					INNER JOIN "SelectionMap" "map_1" ON "source_1"."Key1" = "map_1"."Key1" AND "source_1"."Key2" = "map_1"."Key2",
				"Sample" "entity"
		) "source_2"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'YearMap')) THEN
		EXECUTE STATEMENT 'DROP TABLE "YearMap"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SelectionMap')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SelectionMap"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Source')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Source"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Sample')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Sample"';
END

