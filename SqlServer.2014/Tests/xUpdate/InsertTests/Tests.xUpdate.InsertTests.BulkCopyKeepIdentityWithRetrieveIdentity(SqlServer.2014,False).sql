-- SqlServer.2014
SELECT Max([Id]) FROM [KeepIdentityTable]

INSERT BULK [KeepIdentityTable](Id, Text)

-- SqlServer.2014
INSERT INTO [KeepIdentityTable]
(
	[Text]
)
VALUES
(
	N'Text 3'
)

