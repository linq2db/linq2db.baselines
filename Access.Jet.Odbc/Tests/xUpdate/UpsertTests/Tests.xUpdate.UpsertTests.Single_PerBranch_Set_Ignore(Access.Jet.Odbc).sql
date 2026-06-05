-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @updateTime DateTime
SET     @updateTime = #2026-01-01 12:00:00#
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Version] = ?,
	[t1].[UpdatedAt] = ?,
	[t1].[UpdatedBy] = 'system'
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @insertTime DateTime
SET     @insertTime = #2026-01-01 10:00:00#

INSERT INTO [UpsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[CreatedBy]
)
VALUES
(
	?,
	?,
	?,
	?,
	'system'
)

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[r].[Id],
	[r].[Name],
	[r].[Version],
	[r].[CreatedAt],
	[r].[CreatedBy],
	[r].[UpdatedAt],
	[r].[UpdatedBy]
FROM
	[UpsertTest] [r]
WHERE
	[r].[Id] = 1

-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @updateTime DateTime
SET     @updateTime = #2026-01-01 12:00:00#
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Version] = ?,
	[t1].[UpdatedAt] = ?,
	[t1].[UpdatedBy] = 'system'
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[r].[Id],
	[r].[Name],
	[r].[Version],
	[r].[CreatedAt],
	[r].[CreatedBy],
	[r].[UpdatedAt],
	[r].[UpdatedBy]
FROM
	[UpsertTest] [r]
WHERE
	[r].[Id] = 1

