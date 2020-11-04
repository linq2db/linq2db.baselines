﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id]   UniqueIdentifier NOT NULL,
		[Name] NVarChar(4000)       NULL,

		CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [User]
(
	[Id],
	[Name]
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11',N'User1'),
('a948600d-de21-4f74-8ac2-9516b287076e',N'User2')

BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[Id],
	[t1].[Name]
FROM
	[User] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[Id],
	[t1].[Name]
FROM
	[User] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

