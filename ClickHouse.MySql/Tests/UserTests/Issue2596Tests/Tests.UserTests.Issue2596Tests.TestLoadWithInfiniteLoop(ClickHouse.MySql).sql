BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PriceList

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS PriceList
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Product

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Product
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AccessTariff

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS AccessTariff
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CountryState

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CountryState
(
	Id                    Int32,
	CountryId             Int32,
	AutonomousCommunityId Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AutonomousCommunity

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS AutonomousCommunity
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Country

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Country
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvoicePendingState

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InvoicePendingState
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TypeBMeasures

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TypeBMeasures
(
	Id              Int32,
	CustomInvoiceId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Town

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Town
(
	Id      Int32,
	StateId Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvoiceLine

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InvoiceLine
(
	Id            Int32,
	ProductUnitId Nullable(Int32),
	InvoiceId     Nullable(Int32),
	ProductId     Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AccountTax

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS AccountTax
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvoiceTaxLine

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InvoiceTaxLine
(
	Id        Int32,
	InvoiceId Nullable(Int32),
	TaxId     Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Invoice

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Invoice
(
	Id                  Int32,
	PendingStateId      Nullable(Int32),
	RectifyingInvoiceId Nullable(Int32),
	RefundByInvoiceId   Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS MeasureSource

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS MeasureSource
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TypeAMeasures

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TypeAMeasures
(
	Id               Int32,
	CustomInvoiceId  Int32,
	MeasuresSourceId Int32,
	PreviousSourceId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS StreetType

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS StreetType
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ServicePoint

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ServicePoint
(
	Id           Int32,
	TownId       Int32,
	StreetTypeId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ProductUnit

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ProductUnit
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Contract

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Contract
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CustomInvoice

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CustomInvoice
(
	Id             Int32,
	ContractId     Int32,
	InvoiceId      Int32,
	ServicePointId Int32,
	AccessTariffId Int32,
	PriceListId    Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CustomInvoiceLine

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CustomInvoiceLine
(
	Id              Int32,
	CustomInvoiceId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.ProductUnitId,
	d.InvoiceId,
	d.ProductId,
	a_ProductUnit.Id,
	a_Product.Id
FROM
	(
		SELECT DISTINCT
			a_Invoice.Id as Id
		FROM
			CustomInvoice f
				INNER JOIN Invoice a_Invoice ON f.InvoiceId = a_Invoice.Id
				INNER JOIN Contract a_Contract ON f.ContractId = a_Contract.Id
				INNER JOIN AccessTariff a_AccessTariff ON f.AccessTariffId = a_AccessTariff.Id
				INNER JOIN ServicePoint a_ServicePoint ON f.ServicePointId = a_ServicePoint.Id
		WHERE
			f.Id = 1
	) m_1
		INNER JOIN InvoiceLine d ON m_1.Id = d.InvoiceId
		LEFT JOIN ProductUnit a_ProductUnit ON d.ProductUnitId = a_ProductUnit.Id
		LEFT JOIN Product a_Product ON d.ProductId = a_Product.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.InvoiceId,
	d.TaxId,
	a_Tax.Id
FROM
	(
		SELECT DISTINCT
			a_Invoice.Id as Id
		FROM
			CustomInvoice f
				INNER JOIN Invoice a_Invoice ON f.InvoiceId = a_Invoice.Id
				INNER JOIN Contract a_Contract ON f.ContractId = a_Contract.Id
				INNER JOIN AccessTariff a_AccessTariff ON f.AccessTariffId = a_AccessTariff.Id
				INNER JOIN ServicePoint a_ServicePoint ON f.ServicePointId = a_ServicePoint.Id
		WHERE
			f.Id = 1
	) m_1
		INNER JOIN InvoiceTaxLine d ON m_1.Id = d.InvoiceId
		INNER JOIN AccountTax a_Tax ON d.TaxId = a_Tax.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.CustomInvoiceId
FROM
	(
		SELECT DISTINCT
			f.Id as Id
		FROM
			CustomInvoice f
				INNER JOIN Invoice a_Invoice ON f.InvoiceId = a_Invoice.Id
				INNER JOIN Contract a_Contract ON f.ContractId = a_Contract.Id
				INNER JOIN AccessTariff a_AccessTariff ON f.AccessTariffId = a_AccessTariff.Id
				INNER JOIN ServicePoint a_ServicePoint ON f.ServicePointId = a_ServicePoint.Id
		WHERE
			f.Id = 1
	) m_1
		INNER JOIN CustomInvoiceLine d ON m_1.Id = d.CustomInvoiceId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.CustomInvoiceId,
	d.MeasuresSourceId,
	d.PreviousSourceId,
	a_Source.Id,
	a_PreviousSource.Id
FROM
	(
		SELECT DISTINCT
			f.Id as Id
		FROM
			CustomInvoice f
				INNER JOIN Invoice a_Invoice ON f.InvoiceId = a_Invoice.Id
				INNER JOIN Contract a_Contract ON f.ContractId = a_Contract.Id
				INNER JOIN AccessTariff a_AccessTariff ON f.AccessTariffId = a_AccessTariff.Id
				INNER JOIN ServicePoint a_ServicePoint ON f.ServicePointId = a_ServicePoint.Id
		WHERE
			f.Id = 1
	) m_1
		INNER JOIN TypeAMeasures d ON m_1.Id = d.CustomInvoiceId
		LEFT JOIN MeasureSource a_Source ON d.MeasuresSourceId = a_Source.Id
		LEFT JOIN MeasureSource a_PreviousSource ON d.PreviousSourceId = a_PreviousSource.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.CustomInvoiceId
FROM
	(
		SELECT DISTINCT
			f.Id as Id
		FROM
			CustomInvoice f
				INNER JOIN Invoice a_Invoice ON f.InvoiceId = a_Invoice.Id
				INNER JOIN Contract a_Contract ON f.ContractId = a_Contract.Id
				INNER JOIN AccessTariff a_AccessTariff ON f.AccessTariffId = a_AccessTariff.Id
				INNER JOIN ServicePoint a_ServicePoint ON f.ServicePointId = a_ServicePoint.Id
		WHERE
			f.Id = 1
	) m_1
		INNER JOIN TypeBMeasures d ON m_1.Id = d.CustomInvoiceId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	f.Id,
	f.ContractId,
	f.InvoiceId,
	f.ServicePointId,
	f.AccessTariffId,
	f.PriceListId,
	a_Invoice.Id,
	a_Invoice.PendingStateId,
	a_Invoice.RectifyingInvoiceId,
	a_Invoice.RefundByInvoiceId,
	a_Rectifying.Id,
	a_Rectifying.PendingStateId,
	a_Rectifying.RectifyingInvoiceId,
	a_Rectifying.RefundByInvoiceId,
	a_RefundBy.Id,
	a_RefundBy.PendingStateId,
	a_RefundBy.RectifyingInvoiceId,
	a_RefundBy.RefundByInvoiceId,
	a_PendingState.Id,
	a_Invoice.Id,
	a_Contract.Id,
	a_AccessTariff.Id,
	a_ServicePoint.Id,
	a_ServicePoint.TownId,
	a_ServicePoint.StreetTypeId,
	a_Town.Id,
	a_Town.StateId,
	a_State.Id,
	a_State.CountryId,
	a_State.AutonomousCommunityId,
	a_Community.Id,
	a_StreetType.Id,
	f.Id,
	a_PriceList.Id
FROM
	CustomInvoice f
		INNER JOIN Invoice a_Invoice ON f.InvoiceId = a_Invoice.Id
		LEFT JOIN Invoice a_Rectifying ON a_Invoice.RectifyingInvoiceId = a_Rectifying.Id
		LEFT JOIN Invoice a_RefundBy ON a_Invoice.RefundByInvoiceId = a_RefundBy.Id
		LEFT JOIN InvoicePendingState a_PendingState ON a_Invoice.PendingStateId = a_PendingState.Id
		INNER JOIN Contract a_Contract ON f.ContractId = a_Contract.Id
		INNER JOIN AccessTariff a_AccessTariff ON f.AccessTariffId = a_AccessTariff.Id
		INNER JOIN ServicePoint a_ServicePoint ON f.ServicePointId = a_ServicePoint.Id
		LEFT JOIN Town a_Town ON a_ServicePoint.TownId = a_Town.Id
		LEFT JOIN CountryState a_State ON a_Town.StateId = a_State.Id
		LEFT JOIN AutonomousCommunity a_Community ON a_State.AutonomousCommunityId = a_Community.Id
		LEFT JOIN StreetType a_StreetType ON a_ServicePoint.StreetTypeId = a_StreetType.Id
		LEFT JOIN PriceList a_PriceList ON f.PriceListId = a_PriceList.Id
WHERE
	f.Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CustomInvoiceLine

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CustomInvoice

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Contract

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ProductUnit

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ServicePoint

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS StreetType

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TypeAMeasures

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS MeasureSource

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Invoice

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvoiceTaxLine

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AccountTax

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvoiceLine

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Town

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TypeBMeasures

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvoicePendingState

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Country

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AutonomousCommunity

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CountryState

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AccessTariff

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Product

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PriceList

