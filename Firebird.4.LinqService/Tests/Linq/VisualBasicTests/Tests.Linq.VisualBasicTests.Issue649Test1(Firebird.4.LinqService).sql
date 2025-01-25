BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_activity649')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_activity649"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_activity649')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_activity649"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'activity649')) THEN
		EXECUTE STATEMENT 'DROP TABLE "activity649"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'activity649')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "activity649"
			(
				"activityid" Int        NOT NULL,
				"personid"   Int        NOT NULL,
				"added"      TimeStamp  NOT NULL,

				CONSTRAINT "PK_activity649" PRIMARY KEY ("activityid")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_activity649')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_activity649"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_activity649')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_activity649" FOR "activity649"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."activityid" = GEN_ID("GIDENTITY_activity649", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_person649')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_person649"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_person649')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_person649"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'person649')) THEN
		EXECUTE STATEMENT 'DROP TABLE "person649"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'person649')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "person649"
			(
				"personid"   Int                                     NOT NULL,
				"personname" VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,

				CONSTRAINT "PK_person649" PRIMARY KEY ("personid")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_person649')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_person649"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_person649')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_person649" FOR "person649"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."personid" = GEN_ID("GIDENTITY_person649", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	MAX("VBIt"."added")
FROM
	"activity649" "VBIt"
		INNER JOIN "person649" "a_Person" ON "VBIt"."personid" = "a_Person"."personid"
WHERE
	"VBIt"."added" >= CAST('2017-01-01' AS TimeStamp)
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_person649')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_person649"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_person649')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_person649"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'person649')) THEN
		EXECUTE STATEMENT 'DROP TABLE "person649"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_activity649')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_activity649"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_activity649')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_activity649"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'activity649')) THEN
		EXECUTE STATEMENT 'DROP TABLE "activity649"';
END

