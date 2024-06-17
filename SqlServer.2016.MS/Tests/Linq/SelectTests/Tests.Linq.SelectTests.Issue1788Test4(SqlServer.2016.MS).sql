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
DECLARE @p Bit -- Boolean
SET     @p = 0

SELECT
	IIF([l_1].[Id] IS NOT NULL, [l_1].[HasValue], @p),
	[l_1].[Value1]
FROM
	[Table1788] [p]
		LEFT JOIN (
			SELECT
				IIF([l].[Value1] IS NOT NULL, IIF([l].[Value1] IS NOT NULL, 1, 0), 0) as [HasValue],
				[l].[Id],
				[l].[Value1]
			FROM
				[Table1788] [l]
		) [l_1] ON [l_1].[Id] = [p].[Id] + 1

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Table1788]

