BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4193Person]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NULL)
	CREATE TABLE [Issue4193Person]
	(
		[Name]       NVarChar(4000) NOT NULL,
		[EmployeeId] Int                NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [Issue4193Person]
(
	[Name],
	[EmployeeId]
)
VALUES
(N'foo',1)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4193Employee]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NULL)
	CREATE TABLE [Issue4193Employee]
	(
		[SalaryId] Int NOT NULL,
		[Id]       Int NOT NULL,

		CONSTRAINT [PK_Issue4193Employee] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [Issue4193Employee]
(
	[SalaryId],
	[Id]
)
VALUES
(1,1)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4193Salary]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NULL)
	CREATE TABLE [Issue4193Salary]
	(
		[Id]     Int NOT NULL,
		[Amount] Int     NULL,

		CONSTRAINT [PK_Issue4193Salary] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [Issue4193Salary]
(
	[Id],
	[Amount]
)
VALUES
(1,10)

BeforeExecute
-- SqlServer.SA SqlServer.2019

UPDATE
	[p]
SET
	[p].[Name] = [p].[Name] + CAST([r].[SalaryId] AS VarChar(11))
OUTPUT
	INSERTED.[EmployeeId]
FROM
	[Issue4193Person] [p]
		INNER JOIN [Issue4193Employee] [r] ON [p].[EmployeeId] = [r].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4193Salary]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4193Employee]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4193Person]

