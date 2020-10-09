BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	(
		SELECT TOP (@take) 
			[p].[Value1]
		FROM
			[Parent] [p]
	)

