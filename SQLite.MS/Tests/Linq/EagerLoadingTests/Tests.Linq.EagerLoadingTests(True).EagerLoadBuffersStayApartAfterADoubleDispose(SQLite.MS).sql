-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[InvoiceId]
FROM
	[ExportInvoice] [m_1]
		INNER JOIN [ExportInvoiceLine] [d] ON [m_1].[Id] = [d].[InvoiceId]
;
SELECT
	[t1].[Id],
	[t1].[Exported]
FROM
	[ExportInvoice] [t1]

-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[InvoiceId]
FROM
	[ExportInvoice] [m_1]
		INNER JOIN [ExportInvoiceLine] [d] ON [m_1].[Id] = [d].[InvoiceId]
WHERE
	[m_1].[Id] <= 10
;
SELECT
	[i].[Id],
	[i].[Exported]
FROM
	[ExportInvoice] [i]
WHERE
	[i].[Id] <= 10

-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[InvoiceId]
FROM
	[ExportInvoice] [m_1]
		INNER JOIN [ExportInvoiceLine] [d] ON [m_1].[Id] = [d].[InvoiceId]
WHERE
	[m_1].[Id] <= 10
;
SELECT
	[i].[Id],
	[i].[Exported]
FROM
	[ExportInvoice] [i]
WHERE
	[i].[Id] <= 10

-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[InvoiceId]
FROM
	[ExportInvoice] [m_1]
		INNER JOIN [ExportInvoiceLine] [d] ON [m_1].[Id] = [d].[InvoiceId]
WHERE
	[m_1].[Id] > 30
;
SELECT
	[i].[Id],
	[i].[Exported]
FROM
	[ExportInvoice] [i]
WHERE
	[i].[Id] > 30

