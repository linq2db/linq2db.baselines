BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Person] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	[_].[PersonID],
	[_].[Taxonomy]
FROM
	[Doctor] [_]
WHERE
	[_].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	[_].[PersonID],
	[_].[Taxonomy]
FROM
	[Doctor] [_]
WHERE
	[_].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 3

SELECT
	[_].[PersonID],
	[_].[Taxonomy]
FROM
	[Doctor] [_]
WHERE
	[_].[PersonID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 4

SELECT
	[_].[PersonID],
	[_].[Taxonomy]
FROM
	[Doctor] [_]
WHERE
	[_].[PersonID] = ?

