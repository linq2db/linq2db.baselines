BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Invoice

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Invoice
(
	InvoiceID                Int64,
	InvoiceReferenceNumberID Nullable(Int64),
	SettlementTotalOnIssue   Nullable(Decimal128(10))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Invoice
(
	InvoiceID,
	InvoiceReferenceNumberID,
	SettlementTotalOnIssue
)
VALUES
(toInt64(1),toInt64(10),toDecimal128('3', 10))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InvoiceLineItem

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS InvoiceLineItem
(
	InvoiceLineItemID     Int64,
	BillingAmountOverride Decimal128(10),
	Suppressed            Bool,
	OwningInvoiceID       Int64
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InvoiceReferenceNumber

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS InvoiceReferenceNumber
(
	InvoiceReferenceNumberID Int64,
	ReferenceNumber          Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.InvoiceID,
	r.InvoiceReferenceNumberID,
	r.ReferenceNumber,
	t1.SettlementTotalOnIssue,
	ia.InvoiceId,
	ia.Total
FROM
	Invoice t1
		LEFT JOIN InvoiceReferenceNumber r ON r.InvoiceReferenceNumberID = t1.InvoiceReferenceNumberID
		LEFT JOIN (
			SELECT
				g_1.InvoiceID as InvoiceId,
				sumOrNull(ili.BillingAmountOverride) as Total
			FROM
				Invoice g_1
					INNER JOIN InvoiceLineItem ili ON ili.OwningInvoiceID = g_1.InvoiceID
			WHERE
				ili.Suppressed = false
			GROUP BY
				g_1.InvoiceID
		) ia ON ia.InvoiceId = t1.InvoiceID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.InvoiceID,
	r.InvoiceReferenceNumberID,
	r.ReferenceNumber,
	t1.SettlementTotalOnIssue
FROM
	Invoice t1
		LEFT JOIN InvoiceReferenceNumber r ON r.InvoiceReferenceNumberID = t1.InvoiceReferenceNumberID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.InvoiceID,
	r.InvoiceReferenceNumberID,
	r.ReferenceNumber,
	ia.InvoiceId,
	ia.Total
FROM
	Invoice t1
		LEFT JOIN InvoiceReferenceNumber r ON r.InvoiceReferenceNumberID = t1.InvoiceReferenceNumberID
		LEFT JOIN (
			SELECT
				g_1.InvoiceID as InvoiceId,
				sumOrNull(ili.BillingAmountOverride) as Total
			FROM
				Invoice g_1
					INNER JOIN InvoiceLineItem ili ON ili.OwningInvoiceID = g_1.InvoiceID
			WHERE
				ili.Suppressed = false
			GROUP BY
				g_1.InvoiceID
		) ia ON ia.InvoiceId = t1.InvoiceID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InvoiceReferenceNumber

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InvoiceLineItem

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Invoice

