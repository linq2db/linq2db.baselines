BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	([p2].[PersonID] * @ID) / 2,
	[p2].[FirstName]
FROM
	[Person] [p2]

