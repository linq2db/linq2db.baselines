BeforeExecute
-- SqlServer.2019
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 1

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
			[p].[PersonID] = @paramCopy AND [p].[PersonID] = [_].[PersonID]
	)

BeforeExecute
-- SqlServer.2019
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 2

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
			[p].[PersonID] = @paramCopy AND [p].[PersonID] = [_].[PersonID]
	)

BeforeExecute
-- SqlServer.2019
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 3

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
			[p].[PersonID] = @paramCopy AND [p].[PersonID] = [_].[PersonID]
	)

BeforeExecute
-- SqlServer.2019
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 4

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
			[p].[PersonID] = @paramCopy AND [p].[PersonID] = [_].[PersonID]
	)

BeforeExecute
-- SqlServer.2019
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 1

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
			[p].[PersonID] = @paramCopy AND [p].[PersonID] = [_].[PersonID]
	)

