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
		WHEN ia.InvoiceID IS NOT NULL THEN ia.SUM_1
		ELSE NULL
	END
FROM
	Invoice i
		LEFT JOIN InvoiceReferenceNumber r ON r.InvoiceReferenceNumberID = i.InvoiceReferenceNumberID
		LEFT JOIN (
			SELECT
				g_1.InvoiceID as InvoiceID,
				sum(ili.BillingAmountOverride) as SUM_1
			FROM
				Invoice g_1
					INNER JOIN InvoiceLineItem ili ON ili.OwningInvoiceID = g_1.InvoiceID
			WHERE
				NOT ili.Suppressed
			GROUP BY
				g_1.InvoiceID
		) ia ON ia.InvoiceID = i.InvoiceID

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
		LEFT JOIN InvoiceReferenceNumber r ON r.InvoiceReferenceNumberID = i.InvoiceReferenceNumberID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	i.InvoiceID,
	CASE
		WHEN r.InvoiceReferenceNumberID IS NULL THEN NULL
		ELSE r.ReferenceNumber
	END,
	CASE
		WHEN ia.InvoiceID IS NOT NULL THEN ia.SUM_1
		ELSE NULL
	END
FROM
	Invoice i
		LEFT JOIN InvoiceReferenceNumber r ON r.InvoiceReferenceNumberID = i.InvoiceReferenceNumberID
		LEFT JOIN (
			SELECT
				g_1.InvoiceID as InvoiceID,
				sum(ili.BillingAmountOverride) as SUM_1
			FROM
				Invoice g_1
					INNER JOIN InvoiceLineItem ili ON ili.OwningInvoiceID = g_1.InvoiceID
			WHERE
				NOT ili.Suppressed
			GROUP BY
				g_1.InvoiceID
		) ia ON ia.InvoiceID = i.InvoiceID

