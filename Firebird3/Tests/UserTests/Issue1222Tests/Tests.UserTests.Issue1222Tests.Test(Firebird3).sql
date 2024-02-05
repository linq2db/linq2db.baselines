BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_stLinks')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_stLinks"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_stLinks')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_stLinks"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stLinks')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stLinks"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_stVersions')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_stVersions"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_stVersions')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_stVersions"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stVersions')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stVersions"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @parentId Integer -- Int32
SET     @parentId = 111

SELECT
	"version_1"."inIdMain"
FROM
	(
		SELECT
			"link_1"."inIdChild" as "InIdChild",
			"link_1"."inId" as "InId",
			"link_1"."inIdParent" as "InIdParent",
			"link_1"."inIdChild" as "InIdChild_1",
			"link_1"."inIdTypeRel" as "InIdTypeRel",
			"link_1"."inMaxQuantity" as "InMaxQuantity",
			"link_1"."inMinQuantity" as "InMinQuantity",
			"link_1"."inIdMeasure" as "InIdMeasure",
			"link_1"."inIdUnit" as "InIdUnit",
			"link_1"."State" as "State_1",
			"link_1"."dtModified" as "DtModified",
			"link_1"."inIdOrgOwner" as "InIdOrgOwner",
			"link_1"."dtSynchDate" as "DtSynchDate",
			"link_1"."stGUID" as "StGUID"
		FROM
			"stLinks" "link_1"
		WHERE
			"link_1"."inIdParent" = @parentId
		UNION ALL
		SELECT
			"link_2"."inIdParent" as "InIdChild",
			"link_2"."inId" as "InId",
			"link_2"."inIdParent" as "InIdParent",
			"link_2"."inIdChild" as "InIdChild_1",
			"link_2"."inIdTypeRel" as "InIdTypeRel",
			"link_2"."inMaxQuantity" as "InMaxQuantity",
			"link_2"."inMinQuantity" as "InMinQuantity",
			"link_2"."inIdMeasure" as "InIdMeasure",
			"link_2"."inIdUnit" as "InIdUnit",
			"link_2"."State" as "State_1",
			"link_2"."dtModified" as "DtModified",
			"link_2"."inIdOrgOwner" as "InIdOrgOwner",
			"link_2"."dtSynchDate" as "DtSynchDate",
			"link_2"."stGUID" as "StGUID"
		FROM
			"stLinks" "link_2"
		WHERE
			"link_2"."inIdChild" = @parentId
	) "u"
		INNER JOIN "stVersions" "version_1" ON "u"."InIdChild" = "version_1"."inId"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_stVersions')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_stVersions"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_stVersions')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_stVersions"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stVersions')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stVersions"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_stLinks')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_stLinks"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_stLinks')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_stLinks"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stLinks')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stLinks"';
END

