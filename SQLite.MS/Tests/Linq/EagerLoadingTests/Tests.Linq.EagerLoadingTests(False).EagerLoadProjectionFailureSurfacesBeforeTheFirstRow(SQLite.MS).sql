-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[InvoiceId]
FROM
	[ExportInvoice] [m_1]
		INNER JOIN [ExportInvoiceLine] [d] ON [m_1].[Id] = [d].[InvoiceId]
ORDER BY
	[m_1].[Id]

-- SQLite.MS SQLite
SELECT
	[i].[Id]
FROM
	[ExportInvoice] [i]
ORDER BY
	[i].[Id]

