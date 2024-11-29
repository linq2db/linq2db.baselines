BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Person]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NULL)
	CREATE TABLE [Issue4193Person]
	(
		[Name]       NVarChar(4000) NOT NULL,
		[EmployeeId] Int                NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Issue4193Person]
(
	[Name],
	[EmployeeId]
)
VALUES
(N'foo',1)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Employee]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NULL)
	CREATE TABLE [Issue4193Employee]
	(
		[SalaryId] Int NOT NULL,
		[Id]       Int NOT NULL,

		CONSTRAINT [PK_Issue4193Employee] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Issue4193Employee]
(
	[SalaryId],
	[Id]
)
VALUES
(1,1)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Salary]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NULL)
	CREATE TABLE [Issue4193Salary]
	(
		[Id]     Int NOT NULL,
		[Amount] Int     NULL,

		CONSTRAINT [PK_Issue4193Salary] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Issue4193Salary]
(
	[Id],
	[Amount]
)
VALUES
(1,10)

BeforeExecute
-- SqlServer.2012

UPDATE
	[a_Salary]
SET
	[a_Salary].[Amount] = [a_Salary].[Amount] + 15
OUTPUT
	INSERTED.[Amount]
FROM
	[Issue4193Person] [e]
		LEFT JOIN [Issue4193Employee] [a_Employee] ON [e].[EmployeeId] = [a_Employee].[Id]
		LEFT JOIN [Issue4193Salary] [a_Salary] ON [a_Employee].[SalaryId] = [a_Salary].[Id]
WHERE
	[e].[Name] = N'foo'

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Salary]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Employee]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Person]

