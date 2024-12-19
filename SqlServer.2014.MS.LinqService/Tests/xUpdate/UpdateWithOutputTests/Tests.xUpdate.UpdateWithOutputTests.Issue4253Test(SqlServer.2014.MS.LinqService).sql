BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Person]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NULL)
	CREATE TABLE [Issue4193Person]
	(
		[Name]       NVarChar(4000) NOT NULL,
		[EmployeeId] Int                NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'foo'
DECLARE @EmployeeId Int -- Int32
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
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Employee]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NULL)
	CREATE TABLE [Issue4193Employee]
	(
		[SalaryId] Int NOT NULL,
		[Id]       Int NOT NULL,

		CONSTRAINT [PK_Issue4193Employee] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @SalaryId Int -- Int32
SET     @SalaryId = 1
DECLARE @Id Int -- Int32
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
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Salary]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NULL)
	CREATE TABLE [Issue4193Salary]
	(
		[Id]     Int NOT NULL,
		[Amount] Int     NULL,

		CONSTRAINT [PK_Issue4193Salary] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Amount Int -- Int32
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
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Salary]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Salary]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Employee]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Employee]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4193Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4193Person]

