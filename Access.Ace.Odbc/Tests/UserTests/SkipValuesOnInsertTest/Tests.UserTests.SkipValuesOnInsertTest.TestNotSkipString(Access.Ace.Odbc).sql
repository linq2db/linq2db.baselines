-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Paul'
DECLARE @Age Int -- Int32
SET     @Age = 14

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
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Mary'
DECLARE @Age Int -- Int32
SET     @Age = 15

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

