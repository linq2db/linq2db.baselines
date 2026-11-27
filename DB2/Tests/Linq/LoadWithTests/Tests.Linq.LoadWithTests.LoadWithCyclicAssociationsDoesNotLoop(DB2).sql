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
			"BillingCustomInvoice" "f"
				INNER JOIN "BillingInvoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
				INNER JOIN "BillingContract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
				INNER JOIN "BillingAccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
				INNER JOIN "BillingServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		WHERE
			"f"."Id" = 1
	) "m_1"
		INNER JOIN "BillingInvoiceLine" "d" ON "m_1"."Id" = "d"."InvoiceId"
		LEFT JOIN "BillingProductUnit" "a_ProductUnit" ON "d"."ProductUnitId" = "a_ProductUnit"."Id"
		LEFT JOIN "BillingProduct" "a_Product" ON "d"."ProductId" = "a_Product"."Id"

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
			"BillingCustomInvoice" "f"
				INNER JOIN "BillingInvoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
				INNER JOIN "BillingContract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
				INNER JOIN "BillingAccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
				INNER JOIN "BillingServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		WHERE
			"f"."Id" = 1
	) "m_1"
		INNER JOIN "BillingInvTaxLine" "d" ON "m_1"."Id" = "d"."InvoiceId"
		INNER JOIN "BillingAccountTax" "a_Tax" ON "d"."TaxId" = "a_Tax"."Id"

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
			"BillingCustomInvoice" "f"
				INNER JOIN "BillingInvoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
				INNER JOIN "BillingContract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
				INNER JOIN "BillingAccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
				INNER JOIN "BillingServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		WHERE
			"f"."Id" = 1
	) "m_1"
		INNER JOIN "BillingCustomInvLine" "d" ON "m_1"."Id" = "d"."CustomInvoiceId"

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
			"BillingCustomInvoice" "f"
				INNER JOIN "BillingInvoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
				INNER JOIN "BillingContract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
				INNER JOIN "BillingAccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
				INNER JOIN "BillingServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		WHERE
			"f"."Id" = 1
	) "m_1"
		INNER JOIN "BillingTypeAMeasures" "d" ON "m_1"."Id" = "d"."CustomInvoiceId"
		LEFT JOIN "BillingMeasureSource" "a_Source" ON "d"."MeasuresSourceId" = "a_Source"."Id"
		LEFT JOIN "BillingMeasureSource" "a_PreviousSource" ON "d"."PreviousSourceId" = "a_PreviousSource"."Id"

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
			"BillingCustomInvoice" "f"
				INNER JOIN "BillingInvoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
				INNER JOIN "BillingContract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
				INNER JOIN "BillingAccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
				INNER JOIN "BillingServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		WHERE
			"f"."Id" = 1
	) "m_1"
		INNER JOIN "BillingTypeBMeasures" "d" ON "m_1"."Id" = "d"."CustomInvoiceId"

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
	"BillingCustomInvoice" "f"
		INNER JOIN "BillingInvoice" "a_Invoice" ON "f"."InvoiceId" = "a_Invoice"."Id"
		LEFT JOIN "BillingInvoice" "a_Rectifying" ON "a_Invoice"."RectifyingInvoiceId" = "a_Rectifying"."Id"
		LEFT JOIN "BillingInvoice" "a_RefundBy" ON "a_Invoice"."RefundByInvoiceId" = "a_RefundBy"."Id"
		LEFT JOIN "BillingPendingState" "a_PendingState" ON "a_Invoice"."PendingStateId" = "a_PendingState"."Id"
		INNER JOIN "BillingContract" "a_Contract" ON "f"."ContractId" = "a_Contract"."Id"
		INNER JOIN "BillingAccessTariff" "a_AccessTariff" ON "f"."AccessTariffId" = "a_AccessTariff"."Id"
		INNER JOIN "BillingServicePoint" "a_ServicePoint" ON "f"."ServicePointId" = "a_ServicePoint"."Id"
		LEFT JOIN "BillingTown" "a_Town" ON "a_ServicePoint"."TownId" = "a_Town"."Id"
		LEFT JOIN "BillingCountryState" "a_State" ON "a_Town"."StateId" = "a_State"."Id"
		LEFT JOIN "BillingCommunity" "a_Community" ON "a_State"."AutonomousCommunityId" = "a_Community"."Id"
		LEFT JOIN "BillingStreetType" "a_StreetType" ON "a_ServicePoint"."StreetTypeId" = "a_StreetType"."Id"
		LEFT JOIN "BillingPriceList" "a_PriceList" ON "f"."PriceListId" = "a_PriceList"."Id"
WHERE
	"f"."Id" = 1

