-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[ExportInvoice] [i]
WHERE
	[i].[Exported]

