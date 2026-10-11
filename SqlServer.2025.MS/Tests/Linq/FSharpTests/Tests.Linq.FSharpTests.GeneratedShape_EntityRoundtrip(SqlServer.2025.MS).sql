-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @FirstName NVarChar(50) -- String
SET     @FirstName = N'John'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'Q'
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
	@Id,
	@FirstName,
	@MiddleName,
	@Age
)

-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @FirstName NVarChar(50) -- String
SET     @FirstName = N'Jane'
DECLARE @MiddleName NVarChar(4000) -- String
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
	@Id,
	@FirstName,
	@MiddleName,
	@Age
)

-- SqlServer.2025.MS SqlServer.2025
SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[Age]
FROM
	[GeneratedScaffoldPerson] [p]
WHERE
	[p].[PersonID] = 1

-- SqlServer.2025.MS SqlServer.2025
SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[Age]
FROM
	[GeneratedScaffoldPerson] [p]
WHERE
	[p].[PersonID] = 2

