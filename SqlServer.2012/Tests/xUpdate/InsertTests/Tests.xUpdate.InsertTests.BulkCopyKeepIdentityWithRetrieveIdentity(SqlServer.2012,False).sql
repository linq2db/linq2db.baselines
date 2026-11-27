-- SqlServer.2012
SELECT Max([Id]) FROM [KeepIdentityTable]

INSERT BULK [KeepIdentityTable](Id, Text)

-- SqlServer.2012
INSERT INTO [KeepIdentityTable]
(
	[Text]
)
VALUES
(
	N'Text 3'
)

