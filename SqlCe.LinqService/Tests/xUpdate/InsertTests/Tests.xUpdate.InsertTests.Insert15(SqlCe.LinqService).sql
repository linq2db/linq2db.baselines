BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(8) -- String
SET     @Name_FirstName = 'Insert15'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(8) -- String
SET     @Name_LastName = 'Insert15'

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

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert15%' ESCAPE '~'

