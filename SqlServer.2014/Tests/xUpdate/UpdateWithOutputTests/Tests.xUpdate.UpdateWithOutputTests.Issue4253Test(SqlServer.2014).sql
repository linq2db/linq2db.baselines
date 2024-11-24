BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Person]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NULL)
	CREATE TABLE [Issue4193Person]
	(
		[Name]       NVarChar(4000) NOT NULL,
		[EmployeeId] Int                NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [Issue4193Person]
(
	[Name],
	[EmployeeId]
)
VALUES
(N'foo',1)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Employee]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NULL)
	CREATE TABLE [Issue4193Employee]
	(
		[SalaryId] Int NOT NULL,
		[Id]       Int NOT NULL,

		CONSTRAINT [PK_Issue4193Employee] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [Issue4193Employee]
(
	[SalaryId],
	[Id]
)
VALUES
(1,1)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Salary]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NULL)
	CREATE TABLE [Issue4193Salary]
	(
		[Id]     Int NOT NULL,
		[Amount] Int     NULL,

		CONSTRAINT [PK_Issue4193Salary] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [Issue4193Salary]
(
	[Id],
	[Amount]
)
VALUES
(1,10)

BeforeExecute
-- SqlServer.2014

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
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Salary]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Employee]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Person]

