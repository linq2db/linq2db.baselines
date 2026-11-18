-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Value1  -- Int32
SET     @Value1 = 100

SELECT
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	CASE
		WHEN [x].[Value1] IS NULL THEN @Value1
		ELSE [x].[Value1]
	END > 10

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[Value1]
FROM
	[Parent] [p]

