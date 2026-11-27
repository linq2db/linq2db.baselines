-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Int -- Int32
SET     @Age = 20

INSERT INTO [SkipOnInsertMixed]
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

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 1

-- Access.Jet.Odbc AccessODBC
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnInsertMixed] [t1]
SET
	[t1].[Age] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 1

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Age Int -- Int32
SET     @Age = 25

INSERT INTO [SkipOnInsertMixed]
(
	[Id],
	[Age]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 2

-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Int -- Int32
SET     @Age = 25
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[SkipOnInsertMixed] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Age] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 2

