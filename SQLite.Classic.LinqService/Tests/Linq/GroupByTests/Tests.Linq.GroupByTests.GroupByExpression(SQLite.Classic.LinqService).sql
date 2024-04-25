BeforeExecute
-- SQLite.Classic SQLite
DECLARE @defValue  -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN([gr].[ParentID]), @defValue)
FROM
	[Parent] [gr]

