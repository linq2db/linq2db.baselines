BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Table1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Table1]', N'U') IS NULL)
	CREATE TABLE [Table1]
	(
		[Field1] Int       NOT NULL IDENTITY,
		[Foeld2] NChar(1)      NULL,

		CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([Field1])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[current_1].[Field1],
	[previous].[Field1]
FROM
	[Table1] [current_1],
	[Table1] [previous]
WHERE
	[current_1].[Foeld2] = [previous].[Foeld2] OR [current_1].[Foeld2] IS NULL AND [previous].[Foeld2] IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Table1]

