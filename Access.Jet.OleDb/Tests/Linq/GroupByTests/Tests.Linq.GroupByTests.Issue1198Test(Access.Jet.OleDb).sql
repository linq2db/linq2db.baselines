BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	COUNT(IIF([t].[Status] = 3, 1, NULL))
FROM
	[Issue1192Table] [t]
WHERE
	[t].[MyOtherId] = 12

