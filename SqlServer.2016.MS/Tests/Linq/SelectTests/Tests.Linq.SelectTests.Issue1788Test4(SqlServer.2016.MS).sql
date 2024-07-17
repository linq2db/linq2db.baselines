BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Table1788]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Table1788]', N'U') IS NULL)
	CREATE TABLE [Table1788]
	(
		[Id]     Int NOT NULL,
		[Value1] Int NOT NULL,

		CONSTRAINT [PK_Table1788] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
VALUES
(1,11),
(2,22),
(3,33)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value1]
FROM
	[Table1788] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[l].[Value1]
FROM
	[Table1788] [p]
		LEFT JOIN [Table1788] [l] ON [l].[Id] = [p].[Id] + 1

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Table1788]

