-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[x].[Id]
FROM
	[NullsTable] [x]
ORDER BY
	CASE
		WHEN [x].[Value] IS NULL THEN 1
		ELSE 0
	END,
	[x].[Value],
	[x].[Id]

-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[x].[Id]
FROM
	[NullsTable] [x]
ORDER BY
	CASE
		WHEN [x].[Value] IS NULL THEN 1
		ELSE 0
	END,
	[x].[Value],
	[x].[Id]

