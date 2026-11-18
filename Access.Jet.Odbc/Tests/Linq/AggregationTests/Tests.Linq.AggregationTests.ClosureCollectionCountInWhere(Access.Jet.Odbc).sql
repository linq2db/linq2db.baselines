-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 2
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	[t].[Id]
FROM
	[CountTarget] [t]
WHERE
	[t].[ItemsCount] = ? AND [t].[EmptyCount] = ?

