BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3323Table') IS NOT NULL)
	DROP TABLE [Issue3323Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3323Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3323Table]
		(
			[Id]       Int           NOT NULL,
			[FistName] NVarChar(255)     NULL,
			[LastName] NVarChar(255)     NULL,
			[Text]     NVarChar(255) NOT NULL,

			CONSTRAINT [PK_Issue3323Table] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue3323Table]
(
	[Id],
	[FistName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[Id],
	[r].[FistName] + ' ' + [r].[LastName]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id],
	[r_1].[FistName] + ' ' + [r_1].[LastName]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3323Table') IS NOT NULL)
	DROP TABLE [Issue3323Table]

