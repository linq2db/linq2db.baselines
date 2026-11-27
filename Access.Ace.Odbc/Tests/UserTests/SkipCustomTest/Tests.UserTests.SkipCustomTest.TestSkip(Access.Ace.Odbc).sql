-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Int -- Int32
SET     @Age = 15

INSERT INTO [SkipCustomValuesTable]
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
	[SkipCustomValuesTable] [t]
WHERE
	[t].[Id] = 1

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Max'

INSERT INTO [SkipCustomValuesTable]
(
	[Id],
	[Name]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipCustomValuesTable] [t]
WHERE
	[t].[Id] = 2

