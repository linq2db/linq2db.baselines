-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[i].[InvoiceID],
	CASE
		WHEN [r].[InvoiceReferenceNumberID] IS NULL THEN NULL
		ELSE [r].[ReferenceNumber]
	END,
	CASE
		WHEN [i].[SettlementTotalOnIssue] IS NOT NULL THEN [i].[SettlementTotalOnIssue]
		WHEN [ia].[InvoiceId] IS NOT NULL THEN [ia].[Total]
		ELSE NULL
	END
FROM
	[TernaryInvoice] [i]
		LEFT JOIN [TernaryInvoiceRef] [r] ON [r].[InvoiceReferenceNumberID] = [i].[InvoiceReferenceNumberID]
		LEFT JOIN (
			SELECT
				[g_1].[InvoiceID] as [InvoiceId],
				SUM([ili].[BillingAmountOverride]) as [Total]
			FROM
				[TernaryInvoice] [g_1]
					INNER JOIN [TernaryInvoiceLine] [ili] ON [ili].[OwningInvoiceID] = [g_1].[InvoiceID]
			WHERE
				NOT [ili].[Suppressed]
			GROUP BY
				[g_1].[InvoiceID]
		) [ia] ON [ia].[InvoiceId] = [i].[InvoiceID]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[i].[InvoiceID],
	CASE
		WHEN [r].[InvoiceReferenceNumberID] IS NULL THEN NULL
		ELSE [r].[ReferenceNumber]
	END,
	[i].[SettlementTotalOnIssue]
FROM
	[TernaryInvoice] [i]
		LEFT JOIN [TernaryInvoiceRef] [r] ON [r].[InvoiceReferenceNumberID] = [i].[InvoiceReferenceNumberID]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[i].[InvoiceID],
	CASE
		WHEN [r].[InvoiceReferenceNumberID] IS NULL THEN NULL
		ELSE [r].[ReferenceNumber]
	END,
	CASE
		WHEN [ia].[InvoiceId] IS NOT NULL THEN [ia].[Total]
		ELSE NULL
	END
FROM
	[TernaryInvoice] [i]
		LEFT JOIN [TernaryInvoiceRef] [r] ON [r].[InvoiceReferenceNumberID] = [i].[InvoiceReferenceNumberID]
		LEFT JOIN (
			SELECT
				[g_1].[InvoiceID] as [InvoiceId],
				SUM([ili].[BillingAmountOverride]) as [Total]
			FROM
				[TernaryInvoice] [g_1]
					INNER JOIN [TernaryInvoiceLine] [ili] ON [ili].[OwningInvoiceID] = [g_1].[InvoiceID]
			WHERE
				NOT [ili].[Suppressed]
			GROUP BY
				[g_1].[InvoiceID]
		) [ia] ON [ia].[InvoiceId] = [i].[InvoiceID]

