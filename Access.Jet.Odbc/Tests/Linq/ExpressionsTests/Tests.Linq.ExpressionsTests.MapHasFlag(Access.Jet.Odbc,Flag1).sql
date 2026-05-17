-- Access.Jet.Odbc AccessODBC
DECLARE @flag Int -- Int32
SET     @flag = 1
DECLARE @flag Int -- Int32
SET     @flag = 1

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] BAND ?) = ?

