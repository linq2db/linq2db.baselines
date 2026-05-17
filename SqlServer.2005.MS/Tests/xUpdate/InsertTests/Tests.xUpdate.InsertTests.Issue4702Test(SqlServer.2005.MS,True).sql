-- SqlServer.2005.MS SqlServer.2005

SELECT Max([Id]) FROM [Issue4702Table]

-- SqlServer.2005.MS SqlServer.2005

SET IDENTITY_INSERT [Issue4702Table] ON

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4702Table]
(
	[Id],
	[Text]
)
SELECT 1,N'Text 1' UNION ALL
SELECT 2,N'Text 2'

-- SqlServer.2005.MS SqlServer.2005

SET IDENTITY_INSERT [Issue4702Table] OFF

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4702Table]
(
	[Text]
)
VALUES
(
	N'Text 3'
)

