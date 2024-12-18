BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table1]', N'U') IS NOT NULL)
	DROP TABLE [Table1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table1]', N'U') IS NULL)
	CREATE TABLE [Table1]
	(
		[Field1] Int       NOT NULL IDENTITY,
		[Foeld2] NChar(1)      NULL,

		CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([Field1])
	)

BeforeExecute
-- SqlServer.2012

SELECT
	[current_1].[Field1],
	[previous].[Field1]
FROM
	[Table1] [current_1],
	[Table1] [previous]
WHERE
	[current_1].[Foeld2] = [previous].[Foeld2] AND [current_1].[Foeld2] IS NOT NULL AND [previous].[Foeld2] IS NOT NULL OR
	[current_1].[Foeld2] IS NULL AND [previous].[Foeld2] IS NULL

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table1]', N'U') IS NOT NULL)
	DROP TABLE [Table1]

