BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	[p].[PersonID] as [ID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	[p].[PersonID] as [ID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

