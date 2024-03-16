BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	([p2].[PersonID] * @ID) / 2,
	[p2].[FirstName]
FROM
	[Person] [p2]

