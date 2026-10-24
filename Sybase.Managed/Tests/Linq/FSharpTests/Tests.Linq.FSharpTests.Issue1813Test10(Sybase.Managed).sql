-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name UniVarChar(7) -- String
SET     @Name = 'address'

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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'other'

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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text UniVarChar(7) -- String
SET     @Text = 'address'

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

-- Sybase.Managed Sybase
SELECT
	[after_1].[Name],
	[arg3].[Id],
	[arg3].[Text]
FROM
	[Names] [after_1]
		LEFT JOIN [Addresses] [arg3] ON [arg3].[Text] = [after_1].[Name] OR [arg3].[Text] IS NULL AND [after_1].[Name] IS NULL

