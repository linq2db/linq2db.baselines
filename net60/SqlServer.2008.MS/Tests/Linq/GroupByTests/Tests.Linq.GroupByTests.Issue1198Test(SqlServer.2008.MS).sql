BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1192Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1192Table]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1192Table]', N'U') IS NULL)
	CREATE TABLE [Issue1192Table]
	(
		[IdId]      Int NOT NULL,
		[MyOtherId] Int NOT NULL,
		[Status]    Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
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
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1192Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1192Table]

