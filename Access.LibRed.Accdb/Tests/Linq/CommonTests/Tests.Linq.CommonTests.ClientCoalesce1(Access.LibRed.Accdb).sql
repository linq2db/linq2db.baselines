-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Value1  -- Int32
SET     @Value1 = 100

SELECT
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	IIF([x].[Value1] IS NULL, @Value1, [x].[Value1]) > 10

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[Value1]
FROM
	[Parent] [p]

