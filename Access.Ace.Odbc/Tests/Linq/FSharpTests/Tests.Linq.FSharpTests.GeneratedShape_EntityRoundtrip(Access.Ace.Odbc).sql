-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @MiddleName NVarChar(1) -- String
SET     @MiddleName = 'Q'
DECLARE @Age Int -- Int32
SET     @Age = 42

INSERT INTO [GeneratedScaffoldPerson]
(
	[PersonID],
	[FirstName],
	[MiddleName],
	[Age]
)
VALUES
(
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'Jane'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Age Int -- Int32
SET     @Age = NULL

INSERT INTO [GeneratedScaffoldPerson]
(
	[PersonID],
	[FirstName],
	[MiddleName],
	[Age]
)
VALUES
(
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[p].[PersonID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[Age]
FROM
	[GeneratedScaffoldPerson] [p]
WHERE
	[p].[PersonID] = 1

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[p].[PersonID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[Age]
FROM
	[GeneratedScaffoldPerson] [p]
WHERE
	[p].[PersonID] = 2

