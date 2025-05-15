BeforeExecute
-- SqlServer.2008
DECLARE @p1 Int -- Int32
SET     @p1 = 1
DECLARE @p2 Int -- Int32
SET     @p2 = 2
DECLARE @p11 Int -- Int32
SET     @p11 = 3

SELECT
	[x].[Id]
FROM
	[Issue1294Table] [x]
WHERE
	[x].[Id] IN (
		SELECT
			[x_1].[Id]
		FROM
			[Issue1294](@p1, @p2) [x_1]
		UNION
		SELECT
			[x_2].[Id]
		FROM
			[Issue1294](@p11, @p2) [x_2]
	)

