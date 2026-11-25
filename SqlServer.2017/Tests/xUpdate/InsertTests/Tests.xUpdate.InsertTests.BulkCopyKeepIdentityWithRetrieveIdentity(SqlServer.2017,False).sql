-- SqlServer.2017
SELECT Max([Id]) FROM [KeepIdentityTable]

INSERT BULK [KeepIdentityTable](Id, Text)

-- SqlServer.2017
INSERT INTO [KeepIdentityTable]
(
	[Text]
)
VALUES
(
	N'Text 3'
)

