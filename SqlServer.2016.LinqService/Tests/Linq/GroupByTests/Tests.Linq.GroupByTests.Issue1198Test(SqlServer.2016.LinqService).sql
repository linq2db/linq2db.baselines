BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1192Table]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Issue1192Table]', N'U') IS NULL)
	CREATE TABLE [Issue1192Table]
	(
		[IdId]      Int NOT NULL,
		[MyOtherId] Int NOT NULL,
		[Status]    Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016

SELECT TOP (1)
	COUNT(IIF([t].[Status] = 3, 1, NULL))
FROM
	[Issue1192Table] [t]
WHERE
	[t].[MyOtherId] = 12

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1192Table]

