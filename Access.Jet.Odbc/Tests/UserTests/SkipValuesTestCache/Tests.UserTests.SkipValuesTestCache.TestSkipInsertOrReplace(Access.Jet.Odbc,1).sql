-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnInsertCache] [t1]
SET
	[t1].[Name] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [SkipOnInsertCache]
(
	[Id],
	[Name]
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
	[SkipOnInsertCache] [t]
WHERE
	[t].[Id] = 1

-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnInsertCache] [t1]
SET
	[t1].[Name] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertCache] [t]
WHERE
	[t].[Id] = 1

