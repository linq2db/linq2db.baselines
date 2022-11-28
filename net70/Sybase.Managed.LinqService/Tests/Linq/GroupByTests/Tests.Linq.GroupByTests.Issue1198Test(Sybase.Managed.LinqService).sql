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
	(
		SELECT
			Count(*)
		FROM
			[Issue1192Table] [t]
		WHERE
			[t].[Status] = 3 AND [t].[MyOtherId] = 12
	)
FROM
	[Issue1192Table] [t_1]
WHERE
	[t_1].[MyOtherId] = 12

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1192Table') IS NOT NULL)
	DROP TABLE [Issue1192Table]

