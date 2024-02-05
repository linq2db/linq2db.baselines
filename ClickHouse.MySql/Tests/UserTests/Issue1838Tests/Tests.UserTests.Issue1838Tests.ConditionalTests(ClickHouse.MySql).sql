BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Invoice

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Invoice
(
	InvoiceID                Int64,
	InvoiceReferenceNumberID Nullable(Int64),
	SettlementTotalOnIssue   Nullable(Decimal128(10))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Invoice
(
	InvoiceID,
	InvoiceReferenceNumberID,
	SettlementTotalOnIssue
)
VALUES
(toInt64(1),toInt64(10),toDecimal128('3', 10))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvoiceLineItem

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InvoiceLineItem
(
	InvoiceLineItemID     Int64,
	BillingAmountOverride Decimal128(10),
	Suppressed            Bool,
	OwningInvoiceID       Int64
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvoiceReferenceNumber

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InvoiceReferenceNumber
(
	InvoiceReferenceNumberID Int64,
	ReferenceNumber          Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i_1.InvoiceID,
	x.InvoiceReferenceNumberID,
	x.ReferenceNumber,
	i_1.SettlementTotalOnIssue,
	t1.InvoiceId,
	t1.Total
FROM
	Invoice i_1
		LEFT JOIN InvoiceReferenceNumber x ON x.InvoiceReferenceNumberID = i_1.InvoiceReferenceNumberID
		LEFT JOIN (
			SELECT
				i.InvoiceID as InvoiceId,
				sumOrNull(x_1.BillingAmountOverride) as Total
			FROM
				Invoice i
					INNER JOIN InvoiceLineItem x_1 ON x_1.OwningInvoiceID = i.InvoiceID AND x_1.Suppressed = false
			GROUP BY
				i.InvoiceID
		) t1 ON t1.InvoiceId = i_1.InvoiceID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.InvoiceID,
	x.InvoiceReferenceNumberID,
	x.ReferenceNumber,
	i.SettlementTotalOnIssue
FROM
	Invoice i
		LEFT JOIN InvoiceReferenceNumber x ON x.InvoiceReferenceNumberID = i.InvoiceReferenceNumberID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i_1.InvoiceID,
	x.InvoiceReferenceNumberID,
	x.ReferenceNumber,
	t1.InvoiceId,
	t1.Total
FROM
	Invoice i_1
		LEFT JOIN InvoiceReferenceNumber x ON x.InvoiceReferenceNumberID = i_1.InvoiceReferenceNumberID
		LEFT JOIN (
			SELECT
				i.InvoiceID as InvoiceId,
				sumOrNull(x_1.BillingAmountOverride) as Total
			FROM
				Invoice i
					INNER JOIN InvoiceLineItem x_1 ON x_1.OwningInvoiceID = i.InvoiceID AND x_1.Suppressed = false
			GROUP BY
				i.InvoiceID
		) t1 ON t1.InvoiceId = i_1.InvoiceID

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvoiceReferenceNumber

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvoiceLineItem

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Invoice

