BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Table1788]', N'U') IS NOT NULL)
	DROP TABLE [Table1788]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Table1788]', N'U') IS NULL)
	CREATE TABLE [Table1788]
	(
		[Id]     Int NOT NULL,
		[Value1] Int NOT NULL,

		CONSTRAINT [PK_Table1788] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
SELECT 1,11 UNION ALL
SELECT 2,22 UNION ALL
SELECT 3,33

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value1]
FROM
	[Table1788] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[l].[Value1]
FROM
	[Table1788] [p]
		LEFT JOIN [Table1788] [l] ON [l].[Id] = [p].[Id] + 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Table1788]', N'U') IS NOT NULL)
	DROP TABLE [Table1788]

