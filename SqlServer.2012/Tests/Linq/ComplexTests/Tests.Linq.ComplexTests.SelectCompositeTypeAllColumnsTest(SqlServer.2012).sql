BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[city]            NVarChar(4000)     NULL,
		[user_name]       NVarChar(4000)     NULL,
		[street]          NVarChar(4000)     NULL,
		[building_number] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [User]
(
	[city],
	[user_name],
	[street],
	[building_number]
)
VALUES
(N'Springwood',N'Freddy',N'Elm Street',13)

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[user_name],
	[t1].[city],
	[t1].[street],
	[t1].[building_number]
FROM
	[User] [t1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

