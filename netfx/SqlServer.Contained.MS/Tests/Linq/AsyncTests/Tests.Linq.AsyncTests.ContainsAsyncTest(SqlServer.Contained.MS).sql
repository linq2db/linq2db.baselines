BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			[t1].[PersonID] = @ID
	), 1, 0)

