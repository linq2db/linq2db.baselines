BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1192Table]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue1192Table]', N'U') IS NULL)
	CREATE TABLE [Issue1192Table]
	(
		[IdId]      Int NOT NULL,
		[MyOtherId] Int NOT NULL,
		[Status]    Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	COUNT(IIF([t].[Status] = 3, 1, NULL))
FROM
	[Issue1192Table] [t]
WHERE
	[t].[MyOtherId] = 12

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1192Table]

