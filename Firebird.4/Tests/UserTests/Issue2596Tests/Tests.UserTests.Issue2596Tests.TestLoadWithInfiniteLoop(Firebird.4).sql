BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_PriceList')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_PriceList"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_PriceList')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_PriceList"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PriceList')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PriceList"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PriceList')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PriceList"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_PriceList" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_PriceList')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_PriceList"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_PriceList')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_PriceList" FOR "PriceList"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_PriceList", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Product')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Product"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Product')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Product"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Product')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Product"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Product')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Product"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_Product" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Product')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Product"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Product')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Product" FOR "Product"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Product", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_AccessTariff')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_AccessTariff"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_AccessTariff')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_AccessTariff"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AccessTariff')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AccessTariff"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AccessTariff')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AccessTariff"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_AccessTariff" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_AccessTariff')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_AccessTariff"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_AccessTariff')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_AccessTariff" FOR "AccessTariff"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_AccessTariff", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CountryState')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_CountryState"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CountryState')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_CountryState"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CountryState')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CountryState"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CountryState')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CountryState"
			(
				"Id"                    Int  NOT NULL,
				"CountryId"             Int  NOT NULL,
				"AutonomousCommunityId" Int,

				CONSTRAINT "PK_CountryState" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CountryState')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_CountryState"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CountryState')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_CountryState" FOR "CountryState"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_CountryState", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_AutonomousCommunity')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_AutonomousCommunity"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_AutonomousCommunity')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_AutonomousCommunity"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AutonomousCommunity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AutonomousCommunity"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AutonomousCommunity')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AutonomousCommunity"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_AutonomousCommunity" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_AutonomousCommunity')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_AutonomousCommunity"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_AutonomousCommunity')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_AutonomousCommunity" FOR "AutonomousCommunity"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_AutonomousCommunity", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Country')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Country"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Country')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Country"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Country')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Country"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Country')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Country"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_Country" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Country')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Country"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Country')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Country" FOR "Country"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Country", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_InvoicePendingState')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_InvoicePendingState"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_InvoicePendingState')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_InvoicePendingState"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvoicePendingState')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvoicePendingState"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvoicePendingState')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InvoicePendingState"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_InvoicePendingState" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_InvoicePendingState')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_InvoicePendingState"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_InvoicePendingState')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_InvoicePendingState" FOR "InvoicePendingState"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_InvoicePendingState", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TypeBMeasures')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TypeBMeasures"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TypeBMeasures')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TypeBMeasures"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TypeBMeasures')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TypeBMeasures"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TypeBMeasures')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TypeBMeasures"
			(
				"Id"              Int  NOT NULL,
				"CustomInvoiceId" Int  NOT NULL,

				CONSTRAINT "PK_TypeBMeasures" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TypeBMeasures')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_TypeBMeasures"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TypeBMeasures')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_TypeBMeasures" FOR "TypeBMeasures"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_TypeBMeasures", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Town')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Town"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Town')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Town"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Town')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Town"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Town')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Town"
			(
				"Id"      Int  NOT NULL,
				"StateId" Int,

				CONSTRAINT "PK_Town" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Town')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Town"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Town')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Town" FOR "Town"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Town", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_InvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_InvoiceLine"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_InvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_InvoiceLine"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvoiceLine"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvoiceLine')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InvoiceLine"
			(
				"Id"            Int  NOT NULL,
				"ProductUnitId" Int,
				"InvoiceId"     Int,
				"ProductId"     Int,

				CONSTRAINT "PK_InvoiceLine" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_InvoiceLine')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_InvoiceLine"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_InvoiceLine')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_InvoiceLine" FOR "InvoiceLine"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_InvoiceLine", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_AccountTax')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_AccountTax"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_AccountTax')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_AccountTax"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AccountTax')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AccountTax"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AccountTax')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AccountTax"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_AccountTax" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_AccountTax')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_AccountTax"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_AccountTax')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_AccountTax" FOR "AccountTax"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_AccountTax", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_InvoiceTaxLine')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_InvoiceTaxLine"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_InvoiceTaxLine')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_InvoiceTaxLine"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvoiceTaxLine')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvoiceTaxLine"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvoiceTaxLine')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InvoiceTaxLine"
			(
				"Id"        Int  NOT NULL,
				"InvoiceId" Int,
				"TaxId"     Int,

				CONSTRAINT "PK_InvoiceTaxLine" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_InvoiceTaxLine')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_InvoiceTaxLine"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_InvoiceTaxLine')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_InvoiceTaxLine" FOR "InvoiceTaxLine"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_InvoiceTaxLine", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Invoice')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Invoice"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Invoice')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Invoice"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Invoice')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Invoice"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Invoice')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Invoice"
			(
				"Id"                  Int  NOT NULL,
				"PendingStateId"      Int,
				"RectifyingInvoiceId" Int,
				"RefundByInvoiceId"   Int,

				CONSTRAINT "PK_Invoice" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Invoice')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Invoice"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Invoice')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Invoice" FOR "Invoice"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Invoice", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_MeasureSource')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_MeasureSource"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_MeasureSource')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_MeasureSource"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MeasureSource')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MeasureSource"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MeasureSource')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "MeasureSource"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_MeasureSource" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_MeasureSource')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_MeasureSource"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_MeasureSource')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_MeasureSource" FOR "MeasureSource"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_MeasureSource", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TypeAMeasures')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TypeAMeasures"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TypeAMeasures')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TypeAMeasures"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TypeAMeasures')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TypeAMeasures"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TypeAMeasures')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TypeAMeasures"
			(
				"Id"               Int  NOT NULL,
				"CustomInvoiceId"  Int  NOT NULL,
				"MeasuresSourceId" Int  NOT NULL,
				"PreviousSourceId" Int  NOT NULL,

				CONSTRAINT "PK_TypeAMeasures" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TypeAMeasures')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_TypeAMeasures"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TypeAMeasures')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_TypeAMeasures" FOR "TypeAMeasures"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_TypeAMeasures", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_StreetType')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_StreetType"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_StreetType')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_StreetType"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StreetType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StreetType"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StreetType')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "StreetType"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_StreetType" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_StreetType')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_StreetType"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_StreetType')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_StreetType" FOR "StreetType"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_StreetType", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_ServicePoint')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_ServicePoint"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_ServicePoint')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_ServicePoint"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ServicePoint')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ServicePoint"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ServicePoint')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ServicePoint"
			(
				"Id"           Int  NOT NULL,
				"TownId"       Int  NOT NULL,
				"StreetTypeId" Int  NOT NULL,

				CONSTRAINT "PK_ServicePoint" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_ServicePoint')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_ServicePoint"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_ServicePoint')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_ServicePoint" FOR "ServicePoint"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_ServicePoint", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_ProductUnit')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_ProductUnit"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_ProductUnit')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_ProductUnit"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductUnit')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ProductUnit"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductUnit')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ProductUnit"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_ProductUnit" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_ProductUnit')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_ProductUnit"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_ProductUnit')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_ProductUnit" FOR "ProductUnit"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_ProductUnit", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Contract')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Contract"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Contract')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Contract"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Contract"
			(
				"Id" Int  NOT NULL,

				CONSTRAINT "PK_Contract" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Contract')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Contract"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Contract')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Contract" FOR "Contract"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Contract", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CustomInvoice')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_CustomInvoice"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CustomInvoice')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_CustomInvoice"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomInvoice')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CustomInvoice"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomInvoice')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CustomInvoice"
			(
				"Id"             Int  NOT NULL,
				"ContractId"     Int  NOT NULL,
				"InvoiceId"      Int  NOT NULL,
				"ServicePointId" Int  NOT NULL,
				"AccessTariffId" Int  NOT NULL,
				"PriceListId"    Int  NOT NULL,

				CONSTRAINT "PK_CustomInvoice" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CustomInvoice')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_CustomInvoice"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CustomInvoice')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_CustomInvoice" FOR "CustomInvoice"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_CustomInvoice", 1);
			END
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CustomInvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_CustomInvoiceLine"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CustomInvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_CustomInvoiceLine"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomInvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CustomInvoiceLine"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomInvoiceLine')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CustomInvoiceLine"
			(
				"Id"              Int  NOT NULL,
				"CustomInvoiceId" Int  NOT NULL,

				CONSTRAINT "PK_CustomInvoiceLine" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CustomInvoiceLine')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_CustomInvoiceLine"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CustomInvoiceLine')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_CustomInvoiceLine" FOR "CustomInvoiceLine"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_CustomInvoiceLine", 1);
			END
		';
END

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."ProductUnitId",
	"d"."InvoiceId",
	"d"."ProductId",
	"a_ProductUnit"."Id",
	"a_Product"."Id"
FROM
	(
		SELECT DISTINCT
			"a_Invoice"."Id"
		FROM
			"CustomInvoice" "f"
				INNER JOIN "Invoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
				INNER JOIN "Contract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
				INNER JOIN "AccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
				INNER JOIN "ServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		WHERE
			"f"."Id" = 1
	) "m_1"
		INNER JOIN "InvoiceLine" "d" ON "m_1"."Id" = "d"."InvoiceId" AND "d"."InvoiceId" IS NOT NULL
		LEFT JOIN "ProductUnit" "a_ProductUnit" ON "d"."ProductUnitId" = "a_ProductUnit"."Id" AND "d"."ProductUnitId" IS NOT NULL
		LEFT JOIN "Product" "a_Product" ON "d"."ProductId" = "a_Product"."Id" AND "d"."ProductId" IS NOT NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."InvoiceId",
	"d"."TaxId",
	"a_Tax"."Id"
FROM
	(
		SELECT DISTINCT
			"a_Invoice"."Id"
		FROM
			"CustomInvoice" "f"
				INNER JOIN "Invoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
				INNER JOIN "Contract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
				INNER JOIN "AccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
				INNER JOIN "ServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		WHERE
			"f"."Id" = 1
	) "m_1"
		INNER JOIN "InvoiceTaxLine" "d" ON "m_1"."Id" = "d"."InvoiceId" AND "d"."InvoiceId" IS NOT NULL
		INNER JOIN "AccountTax" "a_Tax" ON "d"."TaxId" = "a_Tax"."Id" AND "d"."TaxId" IS NOT NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."CustomInvoiceId"
FROM
	(
		SELECT DISTINCT
			"f"."Id"
		FROM
			"CustomInvoice" "f"
				INNER JOIN "Invoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
				INNER JOIN "Contract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
				INNER JOIN "AccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
				INNER JOIN "ServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		WHERE
			"f"."Id" = 1
	) "m_1"
		INNER JOIN "CustomInvoiceLine" "d" ON "m_1"."Id" = "d"."CustomInvoiceId"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."CustomInvoiceId",
	"d"."MeasuresSourceId",
	"d"."PreviousSourceId",
	"a_Source"."Id",
	"a_PreviousSource"."Id"
FROM
	(
		SELECT DISTINCT
			"f"."Id"
		FROM
			"CustomInvoice" "f"
				INNER JOIN "Invoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
				INNER JOIN "Contract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
				INNER JOIN "AccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
				INNER JOIN "ServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		WHERE
			"f"."Id" = 1
	) "m_1"
		INNER JOIN "TypeAMeasures" "d" ON "m_1"."Id" = "d"."CustomInvoiceId"
		LEFT JOIN "MeasureSource" "a_Source" ON "d"."MeasuresSourceId" = "a_Source"."Id"
		LEFT JOIN "MeasureSource" "a_PreviousSource" ON "d"."PreviousSourceId" = "a_PreviousSource"."Id"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."CustomInvoiceId"
FROM
	(
		SELECT DISTINCT
			"f"."Id"
		FROM
			"CustomInvoice" "f"
				INNER JOIN "Invoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
				INNER JOIN "Contract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
				INNER JOIN "AccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
				INNER JOIN "ServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		WHERE
			"f"."Id" = 1
	) "m_1"
		INNER JOIN "TypeBMeasures" "d" ON "m_1"."Id" = "d"."CustomInvoiceId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"f"."Id",
	"f"."ContractId",
	"f"."InvoiceId",
	"f"."ServicePointId",
	"f"."AccessTariffId",
	"f"."PriceListId",
	"a_Invoice"."Id",
	"a_Invoice"."PendingStateId",
	"a_Invoice"."RectifyingInvoiceId",
	"a_Invoice"."RefundByInvoiceId",
	"a_Rectifying"."Id",
	"a_Rectifying"."PendingStateId",
	"a_Rectifying"."RectifyingInvoiceId",
	"a_Rectifying"."RefundByInvoiceId",
	"a_RefundBy"."Id",
	"a_RefundBy"."PendingStateId",
	"a_RefundBy"."RectifyingInvoiceId",
	"a_RefundBy"."RefundByInvoiceId",
	"a_PendingState"."Id",
	"a_Invoice"."Id",
	"a_Contract"."Id",
	"a_AccessTariff"."Id",
	"a_ServicePoint"."Id",
	"a_ServicePoint"."TownId",
	"a_ServicePoint"."StreetTypeId",
	"a_Town"."Id",
	"a_Town"."StateId",
	"a_State"."Id",
	"a_State"."CountryId",
	"a_State"."AutonomousCommunityId",
	"a_Community"."Id",
	"a_StreetType"."Id",
	"f"."Id",
	"a_PriceList"."Id"
FROM
	"CustomInvoice" "f"
		INNER JOIN "Invoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
		LEFT JOIN "Invoice" "a_Rectifying" ON "a_Invoice"."RectifyingInvoiceId" = "a_Rectifying"."Id" AND "a_Invoice"."RectifyingInvoiceId" IS NOT NULL
		LEFT JOIN "Invoice" "a_RefundBy" ON "a_Invoice"."RefundByInvoiceId" = "a_RefundBy"."Id" AND "a_Invoice"."RefundByInvoiceId" IS NOT NULL
		LEFT JOIN "InvoicePendingState" "a_PendingState" ON "a_Invoice"."PendingStateId" = "a_PendingState"."Id" AND "a_Invoice"."PendingStateId" IS NOT NULL
		INNER JOIN "Contract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
		INNER JOIN "AccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
		INNER JOIN "ServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		LEFT JOIN "Town" "a_Town" ON "a_ServicePoint"."TownId" = "a_Town"."Id"
		LEFT JOIN "CountryState" "a_State" ON "a_Town"."StateId" = "a_State"."Id" AND "a_Town"."StateId" IS NOT NULL
		LEFT JOIN "AutonomousCommunity" "a_Community" ON "a_State"."AutonomousCommunityId" = "a_Community"."Id" AND "a_State"."AutonomousCommunityId" IS NOT NULL
		LEFT JOIN "StreetType" "a_StreetType" ON "a_ServicePoint"."StreetTypeId" = "a_StreetType"."Id"
		LEFT JOIN "PriceList" "a_PriceList" ON "f"."PriceListId" = "a_PriceList"."Id"
WHERE
	"f"."Id" = 1

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CustomInvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_CustomInvoiceLine"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CustomInvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_CustomInvoiceLine"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomInvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CustomInvoiceLine"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CustomInvoice')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_CustomInvoice"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CustomInvoice')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_CustomInvoice"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CustomInvoice')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CustomInvoice"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Contract')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Contract"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Contract')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Contract"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_ProductUnit')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_ProductUnit"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_ProductUnit')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_ProductUnit"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductUnit')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ProductUnit"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_ServicePoint')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_ServicePoint"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_ServicePoint')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_ServicePoint"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ServicePoint')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ServicePoint"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_StreetType')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_StreetType"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_StreetType')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_StreetType"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StreetType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StreetType"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TypeAMeasures')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TypeAMeasures"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TypeAMeasures')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TypeAMeasures"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TypeAMeasures')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TypeAMeasures"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_MeasureSource')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_MeasureSource"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_MeasureSource')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_MeasureSource"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MeasureSource')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MeasureSource"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Invoice')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Invoice"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Invoice')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Invoice"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Invoice')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Invoice"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_InvoiceTaxLine')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_InvoiceTaxLine"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_InvoiceTaxLine')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_InvoiceTaxLine"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvoiceTaxLine')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvoiceTaxLine"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_AccountTax')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_AccountTax"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_AccountTax')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_AccountTax"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AccountTax')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AccountTax"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_InvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_InvoiceLine"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_InvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_InvoiceLine"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvoiceLine')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvoiceLine"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Town')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Town"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Town')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Town"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Town')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Town"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TypeBMeasures')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TypeBMeasures"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TypeBMeasures')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TypeBMeasures"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TypeBMeasures')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TypeBMeasures"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_InvoicePendingState')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_InvoicePendingState"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_InvoicePendingState')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_InvoicePendingState"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvoicePendingState')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvoicePendingState"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Country')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Country"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Country')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Country"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Country')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Country"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_AutonomousCommunity')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_AutonomousCommunity"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_AutonomousCommunity')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_AutonomousCommunity"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AutonomousCommunity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AutonomousCommunity"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_CountryState')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_CountryState"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_CountryState')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_CountryState"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CountryState')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CountryState"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_AccessTariff')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_AccessTariff"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_AccessTariff')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_AccessTariff"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AccessTariff')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AccessTariff"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Product')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Product"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Product')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Product"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Product')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Product"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_PriceList')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_PriceList"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_PriceList')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_PriceList"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PriceList')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PriceList"';
END

