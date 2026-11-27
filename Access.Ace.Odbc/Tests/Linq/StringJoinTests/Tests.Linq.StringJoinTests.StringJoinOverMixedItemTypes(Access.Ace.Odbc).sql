-- Access.Ace.Odbc AccessODBC
SELECT
	CStr([e].[Value1]) + ',' + IIF([e].[Name] IS NULL, '', [e].[Name]) + ',' + CStr([e].[Id])
FROM
	[JoinProbeEntity] [e]

