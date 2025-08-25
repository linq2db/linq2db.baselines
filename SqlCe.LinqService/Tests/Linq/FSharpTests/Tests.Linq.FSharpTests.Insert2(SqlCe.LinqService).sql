BeforeExecute
-- SqlCe (asynchronously)

SELECT
	MAX([t1].[PersonID]) as [MAX_1]
FROM
	[Person] [t1]

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = ''
DECLARE @Name_LastName NVarChar(2) -- String
SET     @Name_LastName = 'ln'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (2)
	[p].[PersonID] as [ID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 4

BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

