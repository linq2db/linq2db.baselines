-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[OtherId],
	[a_Association].[Id] as [Id_1]
FROM
	[GuidConvertedOwner] [t1]
		LEFT JOIN [GuidConvertedTarget] [a_Association] ON ([t1].[OtherId] = CStr([a_Association].[Id]))

