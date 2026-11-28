-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @MiddleName NVarChar(7) -- String
SET     @MiddleName = 'Quentin'
DECLARE @Age Integer -- Int32
SET     @Age = -42

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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'Jane'
DECLARE @MiddleName NVarChar -- String
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[after_1].[PersonID],
	abs([after_1].[Age])
FROM
	[GeneratedScaffoldPerson] [after_1]
ORDER BY
	[after_1].[PersonID]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[after_1].[PersonID],
	abs([after_1].[Age])
FROM
	[GeneratedScaffoldPerson] [after_1]
ORDER BY
	[after_1].[PersonID]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[after_1].[PersonID],
	length([after_1].[MiddleName])
FROM
	[GeneratedScaffoldPerson] [after_1]
ORDER BY
	[after_1].[PersonID]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[GeneratedScaffoldPerson] [p]
WHERE
	abs([p].[Age]) = 42

