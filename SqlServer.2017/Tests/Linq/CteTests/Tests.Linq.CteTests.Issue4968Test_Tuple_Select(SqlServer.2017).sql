BeforeExecute
-- SqlServer.2017
DECLARE @menuId Int -- Int32
SET     @menuId = 1

WITH [cteQueryable] ([Item1])
AS
(
	SELECT
		[item_1].[Id]
	FROM
		[Issue4968Item] [item_1]
	WHERE
		[item_1].[MenuId] = @menuId
	UNION ALL
	SELECT
		[item_2].[Id]
	FROM
		[Issue4968Item] [item_2]
			INNER JOIN [cteQueryable] [cte] ON [item_2].[ParentItemId] = [cte].[Item1]
)
SELECT
	[i].[Id],
	[i].[MenuId],
	[i].[ParentItemId]
FROM
	[Issue4968Item] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[cteQueryable] [t]
		WHERE
			[t].[Item1] = [i].[Id]
	)

