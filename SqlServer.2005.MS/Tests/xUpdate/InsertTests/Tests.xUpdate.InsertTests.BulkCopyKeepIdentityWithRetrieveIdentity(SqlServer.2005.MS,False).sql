-- SqlServer.2005.MS SqlServer.2005
SELECT Max([Id]) FROM [KeepIdentityTable]

-- SqlServer.2005.MS SqlServer.2005
SET IDENTITY_INSERT [KeepIdentityTable] ON

-- SqlServer.2005.MS SqlServer.2005
INSERT INTO [KeepIdentityTable]
(
	[Id],
	[Text]
)
SELECT 1,N'Text 1' UNION ALL
SELECT 2,N'Text 2'

-- SqlServer.2005.MS SqlServer.2005
SET IDENTITY_INSERT [KeepIdentityTable] OFF

-- SqlServer.2005.MS SqlServer.2005
INSERT INTO [KeepIdentityTable]
(
	[Text]
)
VALUES
(
	N'Text 3'
)

