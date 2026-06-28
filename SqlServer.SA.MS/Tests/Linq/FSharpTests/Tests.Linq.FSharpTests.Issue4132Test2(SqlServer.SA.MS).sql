-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Issue4132Table]
(
	[Id],
	[Number],
	[Text]
)
VALUES
(
	1,
	1,
	N'before'
)

-- SqlServer.SA.MS SqlServer.2019

UPDATE
	[Issue4132Table]
SET
	[Id] = [Issue4132Table].[Id],
	[Number] = [Issue4132Table].[Number],
	[Text] = N'updated recently'
WHERE
	[Issue4132Table].[Number] = 1

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[Issue4132Table] [r]
WHERE
	[r].[Id] = 1

