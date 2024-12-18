BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Invoice

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Invoice
(
	InvoiceID                Int64,
	InvoiceReferenceNumberID Nullable(Int64),
	SettlementTotalOnIssue   Nullable(Decimal128(10))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Invoice
(
	InvoiceID,
	InvoiceReferenceNumberID,
	SettlementTotalOnIssue
)
VALUES
(toInt64(1),toInt64(10),toDecimal128('3', 10))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InvoiceLineItem

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InvoiceLineItem
(
	InvoiceLineItemID     Int64,
	BillingAmountOverride Decimal128(10),
	Suppressed            Bool,
	OwningInvoiceID       Int64
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InvoiceReferenceNumber

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InvoiceReferenceNumber
(
	InvoiceReferenceNumberID Int64,
	ReferenceNumber          Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	i.InvoiceID,
	CASE
		WHEN r.InvoiceReferenceNumberID IS NULL THEN NULL
		ELSE r.ReferenceNumber
	END,
	CASE
		WHEN i.SettlementTotalOnIssue IS NOT NULL THEN i.SettlementTotalOnIssue
		WHEN ia.InvoiceId IS NOT NULL THEN ia.Total
		ELSE NULL
	END
FROM
	Invoice i
		LEFT JOIN InvoiceReferenceNumber r ON r.InvoiceReferenceNumberID = i.InvoiceReferenceNumberID AND i.InvoiceReferenceNumberID IS NOT NULL
		LEFT JOIN (
			SELECT
				g_1.InvoiceID as InvoiceId,
				sum(ili.BillingAmountOverride) as Total
			FROM
				Invoice g_1
					INNER JOIN InvoiceLineItem ili ON ili.OwningInvoiceID = g_1.InvoiceID
			WHERE
				NOT ili.Suppressed
			GROUP BY
				g_1.InvoiceID
		) ia ON ia.InvoiceId = i.InvoiceID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	i.InvoiceID,
	CASE
		WHEN r.InvoiceReferenceNumberID IS NULL THEN NULL
		ELSE r.ReferenceNumber
	END,
	i.SettlementTotalOnIssue
FROM
	Invoice i
		LEFT JOIN InvoiceReferenceNumber r ON r.InvoiceReferenceNumberID = i.InvoiceReferenceNumberID AND i.InvoiceReferenceNumberID IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	i.InvoiceID,
	CASE
		WHEN r.InvoiceReferenceNumberID IS NULL THEN NULL
		ELSE r.ReferenceNumber
	END,
	CASE
		WHEN ia.InvoiceId IS NOT NULL THEN ia.Total
		ELSE NULL
	END
FROM
	Invoice i
		LEFT JOIN InvoiceReferenceNumber r ON r.InvoiceReferenceNumberID = i.InvoiceReferenceNumberID AND i.InvoiceReferenceNumberID IS NOT NULL
		LEFT JOIN (
			SELECT
				g_1.InvoiceID as InvoiceId,
				sum(ili.BillingAmountOverride) as Total
			FROM
				Invoice g_1
					INNER JOIN InvoiceLineItem ili ON ili.OwningInvoiceID = g_1.InvoiceID
			WHERE
				NOT ili.Suppressed
			GROUP BY
				g_1.InvoiceID
		) ia ON ia.InvoiceId = i.InvoiceID

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InvoiceReferenceNumber

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InvoiceLineItem

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Invoice

