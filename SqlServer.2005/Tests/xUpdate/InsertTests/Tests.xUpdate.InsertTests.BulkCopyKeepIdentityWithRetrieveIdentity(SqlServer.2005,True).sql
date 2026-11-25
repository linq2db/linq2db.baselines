-- SqlServer.2005
SELECT Max([Id]) FROM [KeepIdentityTable]

INSERT BULK [KeepIdentityTable](Id, Text)

-- SqlServer.2005
INSERT INTO [KeepIdentityTable]
(
	[Text]
)
VALUES
(
	N'Text 3'
)

