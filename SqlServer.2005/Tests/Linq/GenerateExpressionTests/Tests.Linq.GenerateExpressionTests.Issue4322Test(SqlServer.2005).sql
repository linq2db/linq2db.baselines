BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[x].[position]
FROM
	[entities] [x]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT -10 AS [X]) [t]
		WHERE
			[x].[position].x > [t].[X]
	)

