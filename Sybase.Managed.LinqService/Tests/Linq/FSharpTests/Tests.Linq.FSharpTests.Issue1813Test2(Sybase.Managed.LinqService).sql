BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Names') IS NOT NULL)
	DROP TABLE [Names]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Names') IS NULL)
	EXECUTE('
		CREATE TABLE [Names]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Addresses') IS NOT NULL)
	DROP TABLE [Addresses]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Addresses') IS NULL)
	EXECUTE('
		CREATE TABLE [Addresses]
		(
			[Id]   Int           NOT NULL,
			[Text] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'name1'

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

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'name2'

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

BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Text]
FROM
	(
		SELECT DISTINCT
			[Item1].[Id]
		FROM
			[Names] [Item1]
	) [m_1]
		INNER JOIN [Addresses] [d] ON [m_1].[Id] = [d].[Id]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[tupledArg].[Id],
	[tupledArg].[Name]
FROM
	[Names] [tupledArg]
ORDER BY
	[tupledArg].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Addresses') IS NOT NULL)
	DROP TABLE [Addresses]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Names') IS NOT NULL)
	DROP TABLE [Names]

