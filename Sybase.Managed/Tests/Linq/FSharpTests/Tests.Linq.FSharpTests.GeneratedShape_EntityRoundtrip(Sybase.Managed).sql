-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FirstName UniVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @MiddleName UniVarChar(1) -- String
SET     @MiddleName = 'Q'
DECLARE @Age Integer -- Int32
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
	@Id,
	@FirstName,
	@MiddleName,
	@Age
)

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FirstName UniVarChar(4) -- String
SET     @FirstName = 'Jane'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @Age Integer -- Int32
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
	@Id,
	@FirstName,
	@MiddleName,
	@Age
)

-- Sybase.Managed Sybase
SELECT TOP 2
	[p].[PersonID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[Age]
FROM
	[GeneratedScaffoldPerson] [p]
WHERE
	[p].[PersonID] = 1

-- Sybase.Managed Sybase
SELECT TOP 2
	[p].[PersonID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[Age]
FROM
	[GeneratedScaffoldPerson] [p]
WHERE
	[p].[PersonID] = 2

