-- SqlServer.2017

UPDATE
	[Issue4132Table]
SET
	[Id] = [Issue4132Table].[Id],
	[Number] = [Issue4132Table].[Number],
	[Text] = N'updated recently'
WHERE
	[Issue4132Table].[Number] = 1

