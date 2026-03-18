-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'name1'

INSERT INTO [Names]
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
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'name2'

INSERT INTO [Names]
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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'address'

INSERT INTO [Addresses]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[after_1].[Id],
	[after_1].[Name],
	[arg2].[Id],
	[arg2].[Text]
FROM
	[Names] [after_1]
		LEFT JOIN [Addresses] [arg2] ON [after_1].[Id] = [arg2].[Id]
ORDER BY
	[after_1].[Id]

