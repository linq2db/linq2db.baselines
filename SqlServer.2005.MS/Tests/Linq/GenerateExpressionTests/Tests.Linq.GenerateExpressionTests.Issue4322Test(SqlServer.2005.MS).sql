BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[x].[position]
FROM
	[entities] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT -10 AS [X], 10 AS [Y]) [t]
		WHERE
			[x].[position].x > [t].[X]
	)

