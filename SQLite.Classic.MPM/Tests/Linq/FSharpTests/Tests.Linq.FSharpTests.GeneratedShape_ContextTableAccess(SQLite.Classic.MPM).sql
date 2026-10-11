-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @MiddleName NVarChar(1) -- String
SET     @MiddleName = 'Q'
DECLARE @Age  -- Int32
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[PersonID],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[Age]
FROM
	[GeneratedScaffoldPerson] [t1]

