-- SqlServer.CS SqlServer.2025
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

-- SqlServer.CS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertFluent] [t]
WHERE
	[t].[Id] = 1

