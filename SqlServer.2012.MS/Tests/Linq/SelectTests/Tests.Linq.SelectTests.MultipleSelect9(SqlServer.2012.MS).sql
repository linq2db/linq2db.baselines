BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	([p2].[PersonID] * @ID) / 2,
	[p2].[FirstName]
FROM
	[Person] [p2]

