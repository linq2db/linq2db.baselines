BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_UserDTO')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_UserDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_UserDTO')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_UserDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "UserDTO"
			(
				"UserId"   Int                                     NOT NULL,
				"UserName" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_UserDTO" PRIMARY KEY ("UserId")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_UserDTO')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_UserDTO"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_UserDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_UserDTO" FOR "UserDTO"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."UserId" = GEN_ID("GIDENTITY_UserDTO", 1);
			END
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_UserPositionDTO')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_UserPositionDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_UserPositionDTO')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_UserPositionDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserPositionDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserPositionDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserPositionDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "UserPositionDTO"
			(
				"UserPositionId" Int  NOT NULL,
				"UserId"         Int  NOT NULL,
				"PositionId"     Int  NOT NULL,

				CONSTRAINT "PK_UserPositionDTO" PRIMARY KEY ("UserPositionId")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_UserPositionDTO')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_UserPositionDTO"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_UserPositionDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_UserPositionDTO" FOR "UserPositionDTO"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."UserPositionId" = GEN_ID("GIDENTITY_UserPositionDTO", 1);
			END
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_UPS')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER TIDENTITY_UPS';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_UPS')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR GIDENTITY_UPS';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UPS')) THEN
		EXECUTE STATEMENT 'DROP TABLE UPS';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UPS')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE UPS
			(
				"UserPositionSectorId" Int  NOT NULL,
				"UserPositionId"       Int  NOT NULL,
				"SectorId"             Int  NOT NULL,

				CONSTRAINT PK_UPS PRIMARY KEY ("UserPositionSectorId")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_UPS')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR GIDENTITY_UPS
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_UPS')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER TIDENTITY_UPS FOR UPS
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."UserPositionSectorId" = GEN_ID(GIDENTITY_UPS, 1);
			END
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_PositionDTO')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_PositionDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_PositionDTO')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_PositionDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PositionDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PositionDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PositionDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PositionDTO"
			(
				"PositionId"   Int                                     NOT NULL,
				"PositionName" VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,

				CONSTRAINT "PK_PositionDTO" PRIMARY KEY ("PositionId")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_PositionDTO')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_PositionDTO"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_PositionDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_PositionDTO" FOR "PositionDTO"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."PositionId" = GEN_ID("GIDENTITY_PositionDTO", 1);
			END
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_SectorDTO')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_SectorDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_SectorDTO')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_SectorDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SectorDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SectorDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SectorDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SectorDTO"
			(
				"SectorId"   Int                                     NOT NULL,
				"SectorName" VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,

				CONSTRAINT "PK_SectorDTO" PRIMARY KEY ("SectorId")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_SectorDTO')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_SectorDTO"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_SectorDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_SectorDTO" FOR "SectorDTO"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."SectorId" = GEN_ID("GIDENTITY_SectorDTO", 1);
			END
		';
END

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."SectorId",
	"a_User"."UserId"
FROM
	"SectorDTO" "m_1"
		INNER JOIN UPS "d" ON "m_1"."SectorId" = "d"."SectorId"
		INNER JOIN "UserPositionDTO" "a_UserPosition" ON "d"."UserPositionId" = "a_UserPosition"."UserPositionId"
		INNER JOIN "UserDTO" "a_User" ON "a_UserPosition"."UserId" = "a_User"."UserId"
WHERE
	"a_UserPosition"."PositionId" = 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."SectorId"
FROM
	"SectorDTO" "x"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_SectorDTO')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_SectorDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_SectorDTO')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_SectorDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SectorDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SectorDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_PositionDTO')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_PositionDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_PositionDTO')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_PositionDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PositionDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PositionDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_UPS')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER TIDENTITY_UPS';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_UPS')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR GIDENTITY_UPS';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UPS')) THEN
		EXECUTE STATEMENT 'DROP TABLE UPS';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_UserPositionDTO')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_UserPositionDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_UserPositionDTO')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_UserPositionDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserPositionDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserPositionDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_UserDTO')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_UserDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_UserDTO')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_UserDTO"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserDTO"';
END

