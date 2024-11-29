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

INSERT INTO [Issue4193Person]
(
	[Name],
	[EmployeeId]
)
VALUES
('foo',1)

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

INSERT INTO [Issue4193Employee]
(
	[SalaryId],
	[Id]
)
VALUES
(1,1)

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

INSERT INTO [Issue4193Salary]
(
	[Id],
	[Amount]
)
VALUES
(1,10)

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[Issue4193Person]
SET
	[Name] = [Issue4193Person].[Name] || [r].[SalaryId]
FROM
	[Issue4193Employee] [r]
WHERE
	[Issue4193Person].[EmployeeId] = [r].[Id]
RETURNING
	[Issue4193Person].[EmployeeId]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Salary]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Employee]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Person]

