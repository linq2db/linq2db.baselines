-- Access.Ace.Odbc AccessODBC
DECLARE @personId Int -- Int32
SET     @personId = 1
DECLARE @personId Int -- Int32
SET     @personId = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender],
	[p].[FirstName] as [FirstName_1],
	[p].[PersonID] as [ID_1],
	[p].[LastName] as [LastName_1],
	[p].[MiddleName] as [MiddleName_1],
	[p].[Gender] as [Gender_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ? AND [p].[PersonID] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @personId Int -- Int32
SET     @personId = 1
DECLARE @personId Int -- Int32
SET     @personId = 2

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender],
	[p].[FirstName] as [FirstName_1],
	[p].[PersonID] as [ID_1],
	[p].[LastName] as [LastName_1],
	[p].[MiddleName] as [MiddleName_1],
	[p].[Gender] as [Gender_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = ? AND [p].[PersonID] = ?

