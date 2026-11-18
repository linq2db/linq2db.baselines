-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @defValue  -- Int32
SET     @defValue = 10

SELECT
	CASE
		WHEN MIN([gr].[ParentID]) IS NULL THEN @defValue
		ELSE MIN([gr].[ParentID])
	END
FROM
	[Parent] [gr]

