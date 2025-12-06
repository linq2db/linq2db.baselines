-- SqlServer.2025 SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	1
FROM
	[SelectExpressionTable] [t1]

