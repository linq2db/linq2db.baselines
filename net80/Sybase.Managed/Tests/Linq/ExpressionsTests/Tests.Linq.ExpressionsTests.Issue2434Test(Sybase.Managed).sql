BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2434Table') IS NOT NULL)
	DROP TABLE [Issue2434Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2434Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2434Table]
		(
			[Id]        Int           NOT NULL,
			[FirstName] NVarChar(255)     NULL,
			[LastName]  NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[FirstName] + ' ' + [t1].[LastName]
FROM
	[Issue2434Table] [t1]
ORDER BY
	[t1].[FirstName] + ' ' + [t1].[LastName]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2434Table') IS NOT NULL)
	DROP TABLE [Issue2434Table]

