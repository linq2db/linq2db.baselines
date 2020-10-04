BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Invoice]
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

CREATE TABLE [InvoiceLineItem]
(
	[InvoiceLineItemID]     BigInt  NOT NULL,
	[BillingAmountOverride] Decimal NOT NULL,
	[Suppressed]            Bit     NOT NULL,
	[OwningInvoiceID]       BigInt  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [InvoiceReferenceNumber]
(
	[InvoiceReferenceNumberID] BigInt        NOT NULL,
	[ReferenceNumber]          NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[i_1].[InvoiceID],
	[x].[InvoiceReferenceNumberID],
	[x].[ReferenceNumber],
	[i_1].[SettlementTotalOnIssue],
	[t1].[InvoiceId],
	[t1].[Total]
FROM
	[Invoice] [i_1]
		LEFT JOIN [InvoiceReferenceNumber] [x] ON [x].[InvoiceReferenceNumberID] = [i_1].[InvoiceReferenceNumberID]
		LEFT JOIN (
			SELECT
				[i].[InvoiceID] as [InvoiceId],
				Sum([x_1].[BillingAmountOverride]) as [Total]
			FROM
				[Invoice] [i]
					INNER JOIN [InvoiceLineItem] [x_1] ON [x_1].[OwningInvoiceID] = [i].[InvoiceID] AND [x_1].[Suppressed] = 0
			GROUP BY
				[i].[InvoiceID]
		) [t1] ON [t1].[InvoiceId] = [i_1].[InvoiceID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[i].[InvoiceID],
	[x].[InvoiceReferenceNumberID],
	[x].[ReferenceNumber],
	[i].[SettlementTotalOnIssue]
FROM
	[Invoice] [i]
		LEFT JOIN [InvoiceReferenceNumber] [x] ON [x].[InvoiceReferenceNumberID] = [i].[InvoiceReferenceNumberID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[i_1].[InvoiceID],
	[x].[InvoiceReferenceNumberID],
	[x].[ReferenceNumber],
	[t1].[InvoiceId],
	[t1].[Total]
FROM
	[Invoice] [i_1]
		LEFT JOIN [InvoiceReferenceNumber] [x] ON [x].[InvoiceReferenceNumberID] = [i_1].[InvoiceReferenceNumberID]
		LEFT JOIN (
			SELECT
				[i].[InvoiceID] as [InvoiceId],
				Sum([x_1].[BillingAmountOverride]) as [Total]
			FROM
				[Invoice] [i]
					INNER JOIN [InvoiceLineItem] [x_1] ON [x_1].[OwningInvoiceID] = [i].[InvoiceID] AND [x_1].[Suppressed] = 0
			GROUP BY
				[i].[InvoiceID]
		) [t1] ON [t1].[InvoiceId] = [i_1].[InvoiceID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [InvoiceReferenceNumber]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [InvoiceLineItem]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Invoice]

