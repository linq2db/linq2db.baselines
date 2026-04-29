-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'alice'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'alice'

INSERT INTO [EntityInsertTest]
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
	?
)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy]
FROM
	[EntityInsertTest] [t1]

