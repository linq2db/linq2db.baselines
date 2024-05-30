BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1192Table') IS NOT NULL)
	DROP TABLE [Issue1192Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1192Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1192Table]
		(
			[IdId]      Int NOT NULL,
			[MyOtherId] Int NOT NULL,
			[Status]    Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	COUNT(CASE
		WHEN [t].[Status] = 3 THEN 1
		ELSE NULL
	END)
FROM
	[Issue1192Table] [t]
WHERE
	[t].[MyOtherId] = 12

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1192Table') IS NOT NULL)
	DROP TABLE [Issue1192Table]

