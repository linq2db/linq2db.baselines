BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Invoice]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Invoice]
(
	[InvoiceID]                BigInt  NOT NULL,
	[InvoiceReferenceNumberID] BigInt      NULL,
	[SettlementTotalOnIssue]   Decimal     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Invoice]
(
	[InvoiceID],
	[InvoiceReferenceNumberID],
	[SettlementTotalOnIssue]
)
VALUES
(1,10,3)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvoiceLineItem]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InvoiceLineItem]
(
	[InvoiceLineItemID]     BigInt  NOT NULL,
	[BillingAmountOverride] Decimal NOT NULL,
	[Suppressed]            Bit     NOT NULL,
	[OwningInvoiceID]       BigInt  NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvoiceReferenceNumber]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InvoiceReferenceNumber]
(
	[InvoiceReferenceNumberID] BigInt        NOT NULL,
	[ReferenceNumber]          NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[i].[InvoiceID],
	CASE
		WHEN [r].[InvoiceReferenceNumberID] IS NULL THEN NULL
		ELSE [r].[ReferenceNumber]
	END,
	CASE
		WHEN [i].[SettlementTotalOnIssue] IS NOT NULL THEN [i].[SettlementTotalOnIssue]
		WHEN [ia].[InvoiceID] IS NOT NULL THEN [ia].[SUM_1]
		ELSE NULL
	END
FROM
	[Invoice] [i]
		LEFT JOIN [InvoiceReferenceNumber] [r] ON [r].[InvoiceReferenceNumberID] = [i].[InvoiceReferenceNumberID]
		LEFT JOIN (
			SELECT
				[g_1].[InvoiceID],
				SUM([ili].[BillingAmountOverride]) as [SUM_1]
			FROM
				[Invoice] [g_1]
					INNER JOIN [InvoiceLineItem] [ili] ON [ili].[OwningInvoiceID] = [g_1].[InvoiceID]
			WHERE
				NOT [ili].[Suppressed]
			GROUP BY
				[g_1].[InvoiceID]
		) [ia] ON [ia].[InvoiceID] = [i].[InvoiceID]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[i].[InvoiceID],
	CASE
		WHEN [r].[InvoiceReferenceNumberID] IS NULL THEN NULL
		ELSE [r].[ReferenceNumber]
	END,
	[i].[SettlementTotalOnIssue]
FROM
	[Invoice] [i]
		LEFT JOIN [InvoiceReferenceNumber] [r] ON [r].[InvoiceReferenceNumberID] = [i].[InvoiceReferenceNumberID]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[i].[InvoiceID],
	CASE
		WHEN [r].[InvoiceReferenceNumberID] IS NULL THEN NULL
		ELSE [r].[ReferenceNumber]
	END,
	CASE
		WHEN [ia].[InvoiceID] IS NOT NULL THEN [ia].[SUM_1]
		ELSE NULL
	END
FROM
	[Invoice] [i]
		LEFT JOIN [InvoiceReferenceNumber] [r] ON [r].[InvoiceReferenceNumberID] = [i].[InvoiceReferenceNumberID]
		LEFT JOIN (
			SELECT
				[g_1].[InvoiceID],
				SUM([ili].[BillingAmountOverride]) as [SUM_1]
			FROM
				[Invoice] [g_1]
					INNER JOIN [InvoiceLineItem] [ili] ON [ili].[OwningInvoiceID] = [g_1].[InvoiceID]
			WHERE
				NOT [ili].[Suppressed]
			GROUP BY
				[g_1].[InvoiceID]
		) [ia] ON [ia].[InvoiceID] = [i].[InvoiceID]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvoiceReferenceNumber]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvoiceLineItem]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Invoice]

