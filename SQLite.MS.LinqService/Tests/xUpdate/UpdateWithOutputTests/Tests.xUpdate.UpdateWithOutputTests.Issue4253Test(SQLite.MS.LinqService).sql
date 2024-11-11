BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Person]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4193Person]
(
	[Name]       NVarChar(255) NOT NULL,
	[EmployeeId] INTEGER           NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Employee]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4193Employee]
(
	[SalaryId] INTEGER NOT NULL,
	[Id]       INTEGER NOT NULL,

	CONSTRAINT [PK_Issue4193Employee] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Salary]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4193Salary]
(
	[Id]     INTEGER NOT NULL,
	[Amount] INTEGER     NULL,

	CONSTRAINT [PK_Issue4193Salary] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Salary]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Employee]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Person]

