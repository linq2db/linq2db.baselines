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
	[Issue4193Salary]
SET
	[Amount] = [Issue4193Salary].[Amount] + 15
FROM
	[Issue4193Person] [e]
		LEFT JOIN [Issue4193Employee] [a_Employee] ON [e].[EmployeeId] = [a_Employee].[Id]
WHERE
	[e].[Name] = 'foo' AND [a_Employee].[SalaryId] = [Issue4193Salary].[Id]
RETURNING
	[Issue4193Salary].[Amount]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Salary]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Employee]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Person]

