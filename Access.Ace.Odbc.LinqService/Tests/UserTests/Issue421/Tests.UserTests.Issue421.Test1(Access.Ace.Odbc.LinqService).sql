BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = 0x010203

INSERT INTO [BlobClass]
(
	[Id],
	[BlobValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = 0x030201

UPDATE
	[BlobClass] [t1]
SET
	[t1].[BlobValue] = ?
WHERE
	[t1].[Id] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

