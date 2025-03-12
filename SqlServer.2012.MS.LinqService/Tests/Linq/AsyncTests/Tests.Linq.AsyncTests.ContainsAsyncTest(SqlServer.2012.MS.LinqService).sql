BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	IIF(@ID IN (
		SELECT
			[t1].[PersonID]
		FROM
			[Person] [t1]
	), 1, 0)

