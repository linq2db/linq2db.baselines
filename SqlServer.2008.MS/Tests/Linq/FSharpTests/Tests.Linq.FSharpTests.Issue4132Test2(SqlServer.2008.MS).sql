-- SqlServer.2008.MS SqlServer.2008

UPDATE
	[Issue4132Table]
SET
	[Id] = [Issue4132Table].[Id],
	[Number] = [Issue4132Table].[Number],
	[Text] = N'updated recently'
WHERE
	[Issue4132Table].[Number] = 1

