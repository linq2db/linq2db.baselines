﻿BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_billing_devtypes')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_billing_devtypes"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_billing_devtypes')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_billing_devtypes"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_devtypes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "billing_devtypes"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_devtypes')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "billing_devtypes"
			(
				"devtypeid"  Int                                    NOT NULL,
				"typename"   VarChar(50) CHARACTER SET UNICODE_FSS  NOT NULL,
				"GlobalType" Int                                    NOT NULL,

				CONSTRAINT "PK_billing_devtypes" PRIMARY KEY ("devtypeid")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_billing_devtypes')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_billing_devtypes"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_billing_devtypes')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_billing_devtypes" FOR "billing_devtypes"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."devtypeid" = GEN_ID("GIDENTITY_billing_devtypes", 1);
			END
		';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_devices')) THEN
		EXECUTE STATEMENT 'DROP TABLE "billing_devices"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_devices')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "billing_devices"
			(
				"devid"     VarChar(50) CHARACTER SET UNICODE_FSS NOT NULL,
				"sernum"    VarChar(50) CHARACTER SET UNICODE_FSS,
				"devtypeid" Int                                   NOT NULL,

				CONSTRAINT "PK_billing_devices" PRIMARY KEY ("devid")
			)
		';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_billing_DevReadType')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_billing_DevReadType"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_billing_DevReadType')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_billing_DevReadType"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_DevReadType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "billing_DevReadType"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_DevReadType')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "billing_DevReadType"
			(
				"Id"             Int                                    NOT NULL,
				"DevTypeId"      Int                                    NOT NULL,
				"Name"           VarChar(50) CHARACTER SET UNICODE_FSS  NOT NULL,
				"Responsibility" Int                                    NOT NULL,

				CONSTRAINT "PK_billing_DevReadType" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_billing_DevReadType')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_billing_DevReadType"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_billing_DevReadType')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_billing_DevReadType" FOR "billing_DevReadType"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_billing_DevReadType", 1);
			END
		';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_billing_TempReading')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_billing_TempReading"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_billing_TempReading')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_billing_TempReading"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_TempReading')) THEN
		EXECUTE STATEMENT 'DROP TABLE "billing_TempReading"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_TempReading')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "billing_TempReading"
			(
				"id"               Int                                    NOT NULL,
				"DevSerNum"        VarChar(50) CHARACTER SET UNICODE_FSS  NOT NULL,
				"devid"            VarChar(50) CHARACTER SET UNICODE_FSS,
				"tsdevice"         TimeStamp                              NOT NULL,
				"value"            Decimal                                NOT NULL,
				"Devtypeid"        Int,
				"DevReadingTypeId" Int,
				"ReadingTypeName"  VarChar(50) CHARACTER SET UNICODE_FSS,
				"DevGlobalType"    Int                                    NOT NULL,
				"Responsibility"   Int                                    NOT NULL,

				CONSTRAINT "PK_billing_TempReading" PRIMARY KEY ("id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_billing_TempReading')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_billing_TempReading"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_billing_TempReading')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_billing_TempReading" FOR "billing_TempReading"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."id" = GEN_ID("GIDENTITY_billing_TempReading", 1);
			END
		';
END

BeforeExecute
-- Firebird

UPDATE
	"billing_TempReading"
SET
	"billing_TempReading"."DevReadingTypeId" = (
		SELECT
			"drt"."Id"
		FROM
			"billing_TempReading" "tr"
				INNER JOIN "billing_DevReadType" "drt" ON "drt"."Name" = "tr"."ReadingTypeName" AND "drt"."DevTypeId" = "tr"."Devtypeid"
		WHERE
			"billing_TempReading"."id" = "tr"."id"
	),
	"billing_TempReading"."Responsibility" = (
		SELECT
			"drt_1"."Responsibility"
		FROM
			"billing_TempReading" "tr_1"
				INNER JOIN "billing_DevReadType" "drt_1" ON "drt_1"."Name" = "tr_1"."ReadingTypeName" AND "drt_1"."DevTypeId" = "tr_1"."Devtypeid"
		WHERE
			"billing_TempReading"."id" = "tr_1"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"billing_TempReading" "tr_2"
				INNER JOIN "billing_DevReadType" "drt_2" ON "drt_2"."Name" = "tr_2"."ReadingTypeName" AND "drt_2"."DevTypeId" = "tr_2"."Devtypeid"
		WHERE
			"billing_TempReading"."id" = "tr_2"."id"
	)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1

UPDATE
	"billing_TempReading"
SET
	"billing_TempReading"."DevReadingTypeId" = (
		SELECT FIRST @take
			"w"."Id"
		FROM
			"billing_DevReadType" "w"
		WHERE
			"w"."Name" = "billing_TempReading"."ReadingTypeName" AND
			"w"."DevTypeId" = "billing_TempReading"."Devtypeid"
	),
	"billing_TempReading"."Responsibility" = (
		SELECT FIRST @take_1
			"w_1"."Responsibility"
		FROM
			"billing_DevReadType" "w_1"
		WHERE
			"w_1"."Name" = "billing_TempReading"."ReadingTypeName" AND
			"w_1"."DevTypeId" = "billing_TempReading"."Devtypeid"
	)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_billing_TempReading')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_billing_TempReading"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_billing_TempReading')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_billing_TempReading"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_TempReading')) THEN
		EXECUTE STATEMENT 'DROP TABLE "billing_TempReading"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_billing_DevReadType')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_billing_DevReadType"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_billing_DevReadType')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_billing_DevReadType"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_DevReadType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "billing_DevReadType"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_devices')) THEN
		EXECUTE STATEMENT 'DROP TABLE "billing_devices"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_billing_devtypes')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_billing_devtypes"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_billing_devtypes')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_billing_devtypes"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'billing_devtypes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "billing_devtypes"';
END

