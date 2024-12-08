BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Table1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Table1]', N'U') IS NULL)
	CREATE TABLE [Table1]
	(
		[Field1] Int       NOT NULL IDENTITY,
		[Foeld2] NChar(1)      NULL,

		CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([Field1])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[current_1].[Field1],
	[previous].[Field1]
FROM
	[Table1] [current_1],
	[Table1] [previous]
WHERE
	[current_1].[Foeld2] = [previous].[Foeld2] OR [current_1].[Foeld2] IS NULL AND [previous].[Foeld2] IS NULL

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Table1]

