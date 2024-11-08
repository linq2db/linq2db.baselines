BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Person]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NULL)
	CREATE TABLE [Issue4193Person]
	(
		[Name]       NVarChar(4000) NOT NULL,
		[EmployeeId] Int                NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4193Person]
(
	[Name],
	[EmployeeId]
)
SELECT N'foo',1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Employee]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NULL)
	CREATE TABLE [Issue4193Employee]
	(
		[SalaryId] Int NOT NULL,
		[Id]       Int NOT NULL,

		CONSTRAINT [PK_Issue4193Employee] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4193Employee]
(
	[SalaryId],
	[Id]
)
SELECT 1,1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Salary]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NULL)
	CREATE TABLE [Issue4193Salary]
	(
		[Id]     Int NOT NULL,
		[Amount] Int     NULL,

		CONSTRAINT [PK_Issue4193Salary] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4193Salary]
(
	[Id],
	[Amount]
)
SELECT 1,10

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Salary]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Employee]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Person]

