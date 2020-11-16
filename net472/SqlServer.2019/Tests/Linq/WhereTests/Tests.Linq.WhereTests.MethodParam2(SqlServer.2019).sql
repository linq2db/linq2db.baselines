BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

