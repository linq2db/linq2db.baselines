BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	(
		SELECT TOP (@take)
			[p].[Value1]
		FROM
			[Parent] [p]
	)

