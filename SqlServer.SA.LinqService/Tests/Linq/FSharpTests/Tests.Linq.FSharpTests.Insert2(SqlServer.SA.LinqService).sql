BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 4

BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] > 4

