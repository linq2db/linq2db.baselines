-- SqlServer.2005

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

-- SqlServer.2005

UPDATE
	[Issue4132Table]
SET
	[Text] = N'updated recently'
WHERE
	[Issue4132Table].[Number] = 1

-- SqlServer.2005

SELECT TOP (2)
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[Issue4132Table] [r]
WHERE
	[r].[Id] = 1

