-- SqlServer.2022
SELECT Max([Id]) FROM [KeepIdentityTable]

INSERT BULK [KeepIdentityTable](Id, Text)

-- SqlServer.2022
INSERT INTO [KeepIdentityTable]
(
	[Text]
)
VALUES
(
	N'Text 3'
)

