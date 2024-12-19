BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[FirstName] NVarChar(4000)     NULL,
		[Status]    Int                NULL
	)

BeforeExecute
-- SqlServer.2012

SELECT
	[user_1].[FirstName],
	[user_1].[Status]
FROM
	[User] [user_1]
WHERE
	[user_1].[Status] IS NULL

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

