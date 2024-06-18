BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table1788]', N'U') IS NOT NULL)
	DROP TABLE [Table1788]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table1788]', N'U') IS NULL)
	CREATE TABLE [Table1788]
	(
		[Id]     Int NOT NULL,
		[Value1] Int NOT NULL,

		CONSTRAINT [PK_Table1788] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value1]
FROM
	[Table1788] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN [l_1].[Id] IS NOT NULL THEN [l_1].[HasValue]
		ELSE 0
	END,
	[l_1].[Value1]
FROM
	[Table1788] [p]
		LEFT JOIN (
			SELECT
				CASE
					WHEN [l].[Value1] IS NOT NULL THEN CASE
						WHEN [l].[Value1] IS NOT NULL THEN 1
						ELSE 0
					END
					ELSE 0
				END as [HasValue],
				[l].[Id],
				[l].[Value1]
			FROM
				[Table1788] [l]
		) [l_1] ON [l_1].[Id] = [p].[Id] + 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table1788]', N'U') IS NOT NULL)
	DROP TABLE [Table1788]

