BeforeExecute
-- SqlServer.2008

SELECT
	Max([p].[PersonID])
FROM
	[Person] [p]

BeforeExecute
-- SqlServer.2008
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'
DECLARE @Name_FirstName NVarChar(4000) -- String
SET     @Name_FirstName = N'fn'
DECLARE @Name_MiddleName NVarChar(4000) -- String
SET     @Name_MiddleName = N''
DECLARE @Name_LastName NVarChar(4000) -- String
SET     @Name_LastName = N'ln'

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
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[PersonID],
	[p].[Gender],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 4

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

