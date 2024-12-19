BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Invoice]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Invoice]
(
	[InvoiceID]                BigInt  NOT NULL,
	[InvoiceReferenceNumberID] BigInt      NULL,
	[SettlementTotalOnIssue]   Decimal     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Invoice]
(
	[InvoiceID],
	[InvoiceReferenceNumberID],
	[SettlementTotalOnIssue]
)
VALUES
(1,10,3)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InvoiceLineItem]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InvoiceLineItem]
(
	[InvoiceLineItemID]     BigInt  NOT NULL,
	[BillingAmountOverride] Decimal NOT NULL,
	[Suppressed]            Bit     NOT NULL,
	[OwningInvoiceID]       BigInt  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InvoiceReferenceNumber]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InvoiceReferenceNumber]
(
	[InvoiceReferenceNumberID] BigInt        NOT NULL,
	[ReferenceNumber]          NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
	[Invoice] [i]
		LEFT JOIN [InvoiceReferenceNumber] [r] ON [r].[InvoiceReferenceNumberID] = [i].[InvoiceReferenceNumberID]
		LEFT JOIN (
			SELECT
				[g_1].[InvoiceID] as [InvoiceId],
				SUM([ili].[BillingAmountOverride]) as [Total]
			FROM
				[Invoice] [g_1]
					INNER JOIN [InvoiceLineItem] [ili] ON [ili].[OwningInvoiceID] = [g_1].[InvoiceID]
			WHERE
				NOT [ili].[Suppressed]
			GROUP BY
				[g_1].[InvoiceID]
		) [ia] ON [ia].[InvoiceId] = [i].[InvoiceID]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

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
	[Invoice] [i]
		LEFT JOIN [InvoiceReferenceNumber] [r] ON [r].[InvoiceReferenceNumberID] = [i].[InvoiceReferenceNumberID]
		LEFT JOIN (
			SELECT
				[g_1].[InvoiceID] as [InvoiceId],
				SUM([ili].[BillingAmountOverride]) as [Total]
			FROM
				[Invoice] [g_1]
					INNER JOIN [InvoiceLineItem] [ili] ON [ili].[OwningInvoiceID] = [g_1].[InvoiceID]
			WHERE
				NOT [ili].[Suppressed]
			GROUP BY
				[g_1].[InvoiceID]
		) [ia] ON [ia].[InvoiceId] = [i].[InvoiceID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InvoiceReferenceNumber]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InvoiceLineItem]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Invoice]

