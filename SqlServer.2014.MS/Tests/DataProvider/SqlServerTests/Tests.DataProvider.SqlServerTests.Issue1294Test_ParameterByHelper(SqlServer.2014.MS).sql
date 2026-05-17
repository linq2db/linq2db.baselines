-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 2
DECLARE @p_1 Int -- Int32
SET     @p_1 = 5
DECLARE @p_2 Int -- Int32
SET     @p_2 = 3
DECLARE @p_3 Int -- Int32
SET     @p_3 = 4

SELECT
	[x].[Id]
FROM
	[Issue1294Table] [x]
WHERE
	[x].[Id] IN (
		SELECT
			[x_1].[Id]
		FROM
			[Issue1294](@p, @p_1) [x_1]
		UNION
		SELECT
			[x_2].[Id]
		FROM
			[Issue1294](@p_2, @p_3) [x_2]
	)

