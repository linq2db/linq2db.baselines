-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @defValue  -- Int32
SET     @defValue = 10

SELECT
	CASE
		WHEN [gr_1].[Min_1] IS NULL THEN @defValue
		ELSE [gr_1].[Min_1]
	END
FROM
	(
		SELECT
			MIN([gr].[ParentID]) as [Min_1]
		FROM
			[Parent] [gr]
	) [gr_1]

