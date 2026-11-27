-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [SkipOnInsertFluent]
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
	[SkipOnInsertFluent] [t]
WHERE
	[t].[Id] = 1

