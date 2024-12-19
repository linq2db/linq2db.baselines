BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[FirstName] NVarChar(4000)     NULL,
		[Status]    Int                NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[user_1].[FirstName],
	[user_1].[Status]
FROM
	[User] [user_1]
WHERE
	[user_1].[Status] IS NULL

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [User]

