BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
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
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_stLinks"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_stLinks" FOR "stLinks"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW."inId" = GEN_ID("GIDENTITY_stLinks", 1);
		END
	';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "stVersions"
		(
			"inId"     Int  NOT NULL,
			"inIdMain" Int  NOT NULL,

			CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_stVersions"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_stVersions" FOR "stVersions"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW."inId" = GEN_ID("GIDENTITY_stVersions", 1);
		END
	';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_stVersions"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_stVersions"';
	EXECUTE STATEMENT 'DROP TABLE "stVersions"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_stLinks"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_stLinks"';
	EXECUTE STATEMENT 'DROP TABLE "stLinks"';
END

