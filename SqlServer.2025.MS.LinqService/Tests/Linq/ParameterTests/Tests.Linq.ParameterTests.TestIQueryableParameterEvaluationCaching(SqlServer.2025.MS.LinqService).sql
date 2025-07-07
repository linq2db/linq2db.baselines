﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 1

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 2

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 3

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 4

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 1

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] IN (
		SELECT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = @paramCopy
	)

