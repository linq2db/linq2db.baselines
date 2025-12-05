-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	IIF(@ID IN (
		SELECT
			[t1].[PersonID]
		FROM
			[Person] [t1]
	), 1, 0)

