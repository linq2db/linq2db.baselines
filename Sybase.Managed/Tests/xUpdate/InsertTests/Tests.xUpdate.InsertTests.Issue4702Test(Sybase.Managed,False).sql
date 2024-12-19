BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4702Table') IS NOT NULL)
	DROP TABLE [Issue4702Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4702Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4702Table]
		(
			[Id]   Int           IDENTITY NOT NULL,
			[Text] NVarChar(255)              NULL,

			CONSTRAINT [PK_Issue4702Table] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT Max([Id]) FROM [Issue4702Table]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4702Table]
(
	[Id],
	[Text]
)
SELECT 1,'Text 1' UNION ALL
SELECT 2,'Text 2'

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4702Table]
(
	[Text]
)
VALUES
(
	'Text 3'
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4702Table') IS NOT NULL)
	DROP TABLE [Issue4702Table]

