BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4460Table') IS NOT NULL)
	DROP TABLE [Issue4460Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4460Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4460Table]
		(
			[Id]      Int           NOT NULL,
			[Code]    NVarChar(255)     NULL,
			[Name]    NVarChar(255)     NULL,
			[Surname] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
SELECT 1,'GrandChild','Tom','Black'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4460Table') IS NOT NULL)
	DROP TABLE [Issue4460Table]

