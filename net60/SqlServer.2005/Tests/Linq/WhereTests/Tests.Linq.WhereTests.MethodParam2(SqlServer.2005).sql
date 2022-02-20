BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

