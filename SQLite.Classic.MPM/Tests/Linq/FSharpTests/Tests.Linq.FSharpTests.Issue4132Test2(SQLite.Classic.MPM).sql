-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[Issue4132Table]
SET
	[Id] = [Issue4132Table].[Id],
	[Number] = [Issue4132Table].[Number],
	[Text] = 'updated recently'
WHERE
	[Issue4132Table].[Number] = 1

