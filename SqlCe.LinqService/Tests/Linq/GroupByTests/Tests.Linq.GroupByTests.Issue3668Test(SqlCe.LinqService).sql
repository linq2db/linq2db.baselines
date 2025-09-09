BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'

SELECT
	[m_1].[PersonID] as [Key_1],
	[m_1].[FirstName],
	[m_1].[PersonID] as [ID],
	[m_1].[LastName],
	[m_1].[MiddleName],
	[m_1].[Gender]
FROM
	[Person] [m_1]
WHERE
	[m_1].[PersonID] = @id AND [m_1].[LastName] <> @name OR
	[m_1].[FirstName] <> @name AND [m_1].[PersonID] - 1 = @id

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'

SELECT
	[x].[PersonID] as [Key_1]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = @id AND [x].[LastName] <> @name OR
	[x].[FirstName] <> @name AND [x].[PersonID] - 1 = @id
GROUP BY
	[x].[PersonID]

