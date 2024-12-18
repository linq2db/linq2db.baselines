BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4193Person]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4193Person]
(
	[Name]       NVarChar(255) NOT NULL,
	[EmployeeId] INTEGER           NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'foo'
DECLARE @EmployeeId  -- Int32
SET     @EmployeeId = 1

INSERT INTO [Issue4193Person]
(
	[Name],
	[EmployeeId]
)
VALUES
(
	@Name,
	@EmployeeId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4193Employee]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4193Employee]
(
	[SalaryId] INTEGER NOT NULL,
	[Id]       INTEGER NOT NULL,

	CONSTRAINT [PK_Issue4193Employee] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @SalaryId  -- Int32
SET     @SalaryId = 1
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [Issue4193Employee]
(
	[SalaryId],
	[Id]
)
VALUES
(
	@SalaryId,
	@Id
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4193Salary]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4193Salary]
(
	[Id]     INTEGER NOT NULL,
	[Amount] INTEGER     NULL,

	CONSTRAINT [PK_Issue4193Salary] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Amount  -- Int32
SET     @Amount = 10

INSERT INTO [Issue4193Salary]
(
	[Id],
	[Amount]
)
VALUES
(
	@Id,
	@Amount
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[Issue4193Person]
SET
	[Name] = [Issue4193Person].[Name] || [r].[SalaryId]
FROM
	[Issue4193Employee] [r]
WHERE
	[Issue4193Person].[EmployeeId] = [r].[Id] AND [Issue4193Person].[EmployeeId] IS NOT NULL
RETURNING
	[Issue4193Person].[EmployeeId]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4193Salary]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4193Employee]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4193Person]

