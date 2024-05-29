﻿BeforeExecute
-- SqlServer.2019
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 1
DECLARE @ID Int -- Int32
SET     @ID = 0
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 2

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
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @ID
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@ID_1 <> [p_2].[PersonID]
	))

BeforeExecute
-- SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 2
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 3

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
			@ID <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			@paramCopy = [p_1].[PersonID]
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@ID_1 <> [p_2].[PersonID]
	))

BeforeExecute
-- SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 4
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 2
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
			@ID <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @ID_1
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			[p_2].[PersonID] = @paramCopy
	))

BeforeExecute
-- SqlServer.2019
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 1
DECLARE @ID Int -- Int32
SET     @ID = 0
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 2

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
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @ID
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@ID_1 <> [p_2].[PersonID]
	))

BeforeExecute
-- SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 4
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 2
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
			@ID <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] = @ID_1
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			[p_2].[PersonID] = @paramCopy
	))

BeforeExecute
-- SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @paramCopy Int -- Int32
SET     @paramCopy = 2
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 3

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
			@ID <> [p].[PersonID]
	) AND
	([t1].[PersonID] IN (
		SELECT
			[p_1].[PersonID]
		FROM
			[Person] [p_1]
		WHERE
			@paramCopy = [p_1].[PersonID]
	) OR [t1].[PersonID] IN (
		SELECT
			[p_2].[PersonID]
		FROM
			[Person] [p_2]
		WHERE
			@ID_1 <> [p_2].[PersonID]
	))

