-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = NULL

INSERT INTO [SkipOnInsertFluent]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertFluent] [t]
WHERE
	[t].[Id] = 1

