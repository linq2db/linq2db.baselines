-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Marked Int -- Int32
SET     @Marked = 5
DECLARE @Plain Int -- Int32
SET     @Plain = 5

INSERT INTO [StorageTransparentRow]
(
	[Id],
	[Marked],
	[Plain]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Marked Int -- Int32
SET     @Marked = 6
DECLARE @Plain Int -- Int32
SET     @Plain = 7

INSERT INTO [StorageTransparentRow]
(
	[Id],
	[Marked],
	[Plain]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[StorageTransparentRow] [r]
WHERE
	[r].[Marked] = [r].[Plain]

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Marked] + [r].[Plain]
FROM
	[StorageTransparentRow] [r]
ORDER BY
	[r].[Id]

