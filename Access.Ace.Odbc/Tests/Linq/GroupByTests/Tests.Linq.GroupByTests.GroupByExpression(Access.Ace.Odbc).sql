-- Access.Ace.Odbc AccessODBC
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	IIF([gr_1].[Min_1] IS NULL, ?, [gr_1].[Min_1])
FROM
	(
		SELECT
			MIN([gr].[ParentID]) as [Min_1]
		FROM
			[Parent] [gr]
	) [gr_1]

