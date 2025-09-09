BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4000) -- String
SET     @name = N'test'

SELECT
	[m_1].[PersonID],
	[m_1].[FirstName],
	[m_1].[PersonID],
	[m_1].[LastName],
	[m_1].[MiddleName],
	[m_1].[Gender]
FROM
	[Person] [m_1]
WHERE
	[m_1].[PersonID] = @id AND [m_1].[LastName] <> @name OR
	[m_1].[FirstName] <> @name AND [m_1].[PersonID] - 1 = @id

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4000) -- String
SET     @name = N'test'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = @id AND [x].[LastName] <> @name OR
	[x].[FirstName] <> @name AND [x].[PersonID] - 1 = @id
GROUP BY
	[x].[PersonID]

