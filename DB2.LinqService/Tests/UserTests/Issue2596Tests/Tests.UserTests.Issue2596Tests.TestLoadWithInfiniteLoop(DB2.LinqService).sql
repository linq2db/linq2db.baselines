BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "PriceList"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "PriceList"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_PriceList" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Product"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Product"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_Product" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AccessTariff"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "AccessTariff"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_AccessTariff" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "CountryState"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "CountryState"
		(
			"Id"                    Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"CountryId"             Int                              NOT NULL,
			"AutonomousCommunityId" Int                                  NULL,

			CONSTRAINT "PK_CountryState" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AutonomousCommunity"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "AutonomousCommunity"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_AutonomousCommunity" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Country"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Country"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_Country" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InvoicePendingState"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "InvoicePendingState"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_InvoicePendingState" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TypeBMeasures"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TypeBMeasures"
		(
			"Id"              Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"CustomInvoiceId" Int                              NOT NULL,

			CONSTRAINT "PK_TypeBMeasures" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Town"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Town"
		(
			"Id"      Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"StateId" Int                                  NULL,

			CONSTRAINT "PK_Town" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InvoiceLine"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "InvoiceLine"
		(
			"Id"            Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"ProductUnitId" Int                                  NULL,
			"InvoiceId"     Int                                  NULL,
			"ProductId"     Int                                  NULL,

			CONSTRAINT "PK_InvoiceLine" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AccountTax"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "AccountTax"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_AccountTax" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InvoiceTaxLine"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "InvoiceTaxLine"
		(
			"Id"        Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"InvoiceId" Int                                  NULL,
			"TaxId"     Int                                  NULL,

			CONSTRAINT "PK_InvoiceTaxLine" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Invoice"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Invoice"
		(
			"Id"                  Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"PendingStateId"      Int                                  NULL,
			"RectifyingInvoiceId" Int                                  NULL,
			"RefundByInvoiceId"   Int                                  NULL,

			CONSTRAINT "PK_Invoice" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "MeasureSource"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "MeasureSource"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_MeasureSource" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TypeAMeasures"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TypeAMeasures"
		(
			"Id"               Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"CustomInvoiceId"  Int                              NOT NULL,
			"MeasuresSourceId" Int                              NOT NULL,
			"PreviousSourceId" Int                              NOT NULL,

			CONSTRAINT "PK_TypeAMeasures" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "StreetType"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "StreetType"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_StreetType" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ServicePoint"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ServicePoint"
		(
			"Id"           Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"TownId"       Int                              NOT NULL,
			"StreetTypeId" Int                              NOT NULL,

			CONSTRAINT "PK_ServicePoint" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ProductUnit"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ProductUnit"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_ProductUnit" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Contract"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Contract"
		(
			"Id" Int GENERATED ALWAYS AS IDENTITY NOT NULL,

			CONSTRAINT "PK_Contract" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "CustomInvoice"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "CustomInvoice"
		(
			"Id"             Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"ContractId"     Int                              NOT NULL,
			"InvoiceId"      Int                              NOT NULL,
			"ServicePointId" Int                              NOT NULL,
			"AccessTariffId" Int                              NOT NULL,
			"PriceListId"    Int                              NOT NULL,

			CONSTRAINT "PK_CustomInvoice" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "CustomInvoiceLine"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "CustomInvoiceLine"
		(
			"Id"              Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"CustomInvoiceId" Int                              NOT NULL,

			CONSTRAINT "PK_CustomInvoiceLine" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
		INNER JOIN "InvoiceLine" "d" ON "m_1"."Id" = "d"."InvoiceId"
		LEFT JOIN "ProductUnit" "a_ProductUnit" ON "d"."ProductUnitId" = "a_ProductUnit"."Id"
		LEFT JOIN "Product" "a_Product" ON "d"."ProductId" = "a_Product"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
		INNER JOIN "InvoiceTaxLine" "d" ON "m_1"."Id" = "d"."InvoiceId"
		INNER JOIN "AccountTax" "a_Tax" ON "d"."TaxId" = "a_Tax"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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
		LEFT JOIN "Invoice" "a_Rectifying" ON "a_Invoice"."RectifyingInvoiceId" = "a_Rectifying"."Id"
		LEFT JOIN "Invoice" "a_RefundBy" ON "a_Invoice"."RefundByInvoiceId" = "a_RefundBy"."Id"
		LEFT JOIN "InvoicePendingState" "a_PendingState" ON "a_Invoice"."PendingStateId" = "a_PendingState"."Id"
		INNER JOIN "Contract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
		INNER JOIN "AccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
		INNER JOIN "ServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		LEFT JOIN "Town" "a_Town" ON "a_ServicePoint"."TownId" = "a_Town"."Id"
		LEFT JOIN "CountryState" "a_State" ON "a_Town"."StateId" = "a_State"."Id"
		LEFT JOIN "AutonomousCommunity" "a_Community" ON "a_State"."AutonomousCommunityId" = "a_Community"."Id"
		LEFT JOIN "StreetType" "a_StreetType" ON "a_ServicePoint"."StreetTypeId" = "a_StreetType"."Id"
		LEFT JOIN "PriceList" "a_PriceList" ON "f"."PriceListId" = "a_PriceList"."Id"
WHERE
	"f"."Id" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "CustomInvoiceLine"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "CustomInvoice"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Contract"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ProductUnit"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ServicePoint"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "StreetType"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TypeAMeasures"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "MeasureSource"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Invoice"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InvoiceTaxLine"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AccountTax"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InvoiceLine"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Town"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TypeBMeasures"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InvoicePendingState"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Country"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AutonomousCommunity"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "CountryState"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AccessTariff"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Product"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "PriceList"';
END

