BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_stLinks')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_stLinks"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_stLinks')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_stLinks"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stLinks')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stLinks"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stLinks')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "stLinks"
			(
				"inId"          Int                                     NOT NULL,
				"inIdParent"    Int                                     NOT NULL,
				"inIdChild"     Int                                     NOT NULL,
				"inIdTypeRel"   Int                                     NOT NULL,
				"inMaxQuantity" Float,
				"inMinQuantity" Float,
				"inIdMeasure"   Int,
				"inIdUnit"      Int,
				"State"         Int,
				"dtModified"    TimeStamp                               NOT NULL,
				"inIdOrgOwner"  Int,
				"dtSynchDate"   TimeStamp,
				"stGUID"        VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,

				CONSTRAINT "PK_stLinks" PRIMARY KEY ("inId")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_stLinks')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_stLinks"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_stLinks')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_stLinks" FOR "stLinks"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."inId" = GEN_ID("GIDENTITY_stLinks", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_stVersions')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_stVersions"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_stVersions')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_stVersions"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stVersions')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stVersions"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stVersions')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "stVersions"
			(
				"inId"     Int  NOT NULL,
				"inIdMain" Int  NOT NULL,

				CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_stVersions')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_stVersions"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_stVersions')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_stVersions" FOR "stVersions"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."inId" = GEN_ID("GIDENTITY_stVersions", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @parentId Integer -- Int32
SET     @parentId = 111

SELECT
	"version_1"."inIdMain"
FROM
	(
		SELECT
			"u"."inIdChild" as "VersionId"
		FROM
			"stLinks" "u"
		WHERE
			"u"."inIdParent" = @parentId
		UNION ALL
		SELECT
			"link_1"."inIdParent" as "VersionId"
		FROM
			"stLinks" "link_1"
		WHERE
			"link_1"."inIdChild" = @parentId
	) "u_1"
		INNER JOIN "stVersions" "version_1" ON "u_1"."VersionId" = "version_1"."inId"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_stVersions')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_stVersions"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_stVersions')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_stVersions"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stVersions')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stVersions"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_stLinks')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_stLinks"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_stLinks')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_stLinks"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stLinks')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stLinks"';
END

