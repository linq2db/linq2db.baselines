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
	[t1].[InvoiceID],
	[r].[InvoiceReferenceNumberID],
	[r].[ReferenceNumber],
	[t1].[SettlementTotalOnIssue],
	[ia].[InvoiceId],
	[ia].[Total]
FROM
	[Invoice] [t1]
		LEFT JOIN [InvoiceReferenceNumber] [r] ON [r].[InvoiceReferenceNumberID] = [t1].[InvoiceReferenceNumberID]
		LEFT JOIN (
			SELECT
				[g_1].[InvoiceID] as [InvoiceId],
				SUM([ili].[BillingAmountOverride]) as [Total]
			FROM
				[Invoice] [g_1]
					INNER JOIN [InvoiceLineItem] [ili] ON [ili].[OwningInvoiceID] = [g_1].[InvoiceID]
			WHERE
				[ili].[Suppressed] = 0
			GROUP BY
				[g_1].[InvoiceID]
		) [ia] ON [ia].[InvoiceId] = [t1].[InvoiceID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[InvoiceID],
	[r].[InvoiceReferenceNumberID],
	[r].[ReferenceNumber],
	[t1].[SettlementTotalOnIssue]
FROM
	[Invoice] [t1]
		LEFT JOIN [InvoiceReferenceNumber] [r] ON [r].[InvoiceReferenceNumberID] = [t1].[InvoiceReferenceNumberID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[InvoiceID],
	[r].[InvoiceReferenceNumberID],
	[r].[ReferenceNumber],
	[ia].[InvoiceId],
	[ia].[Total]
FROM
	[Invoice] [t1]
		LEFT JOIN [InvoiceReferenceNumber] [r] ON [r].[InvoiceReferenceNumberID] = [t1].[InvoiceReferenceNumberID]
		LEFT JOIN (
			SELECT
				[g_1].[InvoiceID] as [InvoiceId],
				SUM([ili].[BillingAmountOverride]) as [Total]
			FROM
				[Invoice] [g_1]
					INNER JOIN [InvoiceLineItem] [ili] ON [ili].[OwningInvoiceID] = [g_1].[InvoiceID]
			WHERE
				[ili].[Suppressed] = 0
			GROUP BY
				[g_1].[InvoiceID]
		) [ia] ON [ia].[InvoiceId] = [t1].[InvoiceID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InvoiceReferenceNumber]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InvoiceLineItem]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Invoice]

