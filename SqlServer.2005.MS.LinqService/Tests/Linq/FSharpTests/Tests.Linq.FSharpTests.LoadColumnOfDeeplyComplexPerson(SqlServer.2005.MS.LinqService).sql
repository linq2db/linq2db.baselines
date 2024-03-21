BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT TOP (2)
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

