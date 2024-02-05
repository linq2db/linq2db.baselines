BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
	[_].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
	[_].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
	[_].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
	[_].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
	[_].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	)

