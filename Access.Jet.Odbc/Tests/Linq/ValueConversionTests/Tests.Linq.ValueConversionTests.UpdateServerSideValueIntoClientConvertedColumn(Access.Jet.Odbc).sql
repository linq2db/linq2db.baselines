-- Access.Jet.Odbc AccessODBC
DECLARE @test DateTime
SET     @test = #2026-06-06 02:01:01#

UPDATE
	[Issue5975Row] [t1]
SET
	[t1].[Date] = IIF([t1].[Date] IS NOT NULL, ?, DateAdd('d', 1, [t1].[Plain]))

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[Issue5975Row] [t1]
ORDER BY
	[t1].[Id]

