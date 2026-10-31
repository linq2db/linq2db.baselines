-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[InvoiceId]
FROM
	[ExportInvoice] [m_1]
		INNER JOIN [ExportInvoiceLine] [d] ON [m_1].[Id] = [d].[InvoiceId]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Exported]
FROM
	[ExportInvoice] [t1]

-- SQLite.MS SQLite
DECLARE @Exported  -- Boolean
SET     @Exported = 1
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[ExportInvoice]
SET
	[Exported] = @Exported
WHERE
	[ExportInvoice].[Id] = @Id

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

SELECT
	[i].[Exported]
FROM
	[ExportInvoice] [i]
WHERE
	[i].[Id] = @Id
LIMIT 2

-- SQLite.MS SQLite
DECLARE @Exported  -- Boolean
SET     @Exported = 1
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	[ExportInvoice]
SET
	[Exported] = @Exported
WHERE
	[ExportInvoice].[Id] = @Id

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2

SELECT
	[i].[Exported]
FROM
	[ExportInvoice] [i]
WHERE
	[i].[Id] = @Id
LIMIT 2

