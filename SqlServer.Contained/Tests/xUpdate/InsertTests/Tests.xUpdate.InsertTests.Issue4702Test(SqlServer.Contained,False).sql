-- SqlServer.Contained SqlServer.2019

SELECT Max([Id]) FROM [Issue4702Table]

INSERT BULK [Issue4702Table](Id, Text)

-- SqlServer.Contained SqlServer.2019

INSERT INTO [Issue4702Table]
(
	[Text]
)
VALUES
(
	N'Text 3'
)

