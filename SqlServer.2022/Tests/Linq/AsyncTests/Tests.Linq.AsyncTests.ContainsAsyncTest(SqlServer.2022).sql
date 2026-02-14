-- SqlServer.2022
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	IIF(@ID IN (
		SELECT
			[t1].[PersonID] as [ID]
		FROM
			[Person] [t1]
	), 1, 0)

