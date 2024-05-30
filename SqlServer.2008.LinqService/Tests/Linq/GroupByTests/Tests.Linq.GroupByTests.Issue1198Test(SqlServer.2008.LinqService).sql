BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1192Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1192Table]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1192Table]', N'U') IS NULL)
	CREATE TABLE [Issue1192Table]
	(
		[IdId]      Int NOT NULL,
		[MyOtherId] Int NOT NULL,
		[Status]    Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008

SELECT TOP (1)
	COUNT(CASE
		WHEN [t].[Status] = 3 THEN 1
		ELSE NULL
	END)
FROM
	[Issue1192Table] [t]
WHERE
	[t].[MyOtherId] = 12

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1192Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1192Table]

