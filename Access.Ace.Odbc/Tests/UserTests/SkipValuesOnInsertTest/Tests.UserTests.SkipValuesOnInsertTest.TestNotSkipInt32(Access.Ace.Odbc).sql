-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Int -- Int32
SET     @Age = 55

INSERT INTO [SkipOnInsertTable]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertTable] [t]
WHERE
	[t].[Id] = 1

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Int -- Int32
SET     @Age = 50

INSERT INTO [SkipOnInsertTable]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertTable] [t]
WHERE
	[t].[Id] = 2

