BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 4

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			@ID <> [p].[PersonID] AND [p].[PersonID] = [_].[PersonID]
	)

