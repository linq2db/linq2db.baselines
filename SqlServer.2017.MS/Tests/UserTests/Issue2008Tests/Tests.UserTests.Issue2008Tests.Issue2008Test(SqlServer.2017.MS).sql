﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Table1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Table1]', N'U') IS NULL)
	CREATE TABLE [Table1]
	(
		[Id_1]        Int NOT NULL,
		[Description] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Table2]', N'U') IS NULL)
	CREATE TABLE [Table2]
	(
		[Id_2]        Int NOT NULL,
		[Description] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Table3]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Table3]', N'U') IS NULL)
	CREATE TABLE [Table3]
	(
		[Id_3]        Int NOT NULL,
		[Description] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[rTable1].[Id_1],
	[rTable1].[Description],
	[rTable2].[Id_2],
	[rTable2].[Description]
FROM
	[Table1] [rTable1]
		LEFT JOIN [Table2] [rTable2] ON ([rTable2].[Id_2] = [rTable1].[Id_1]) AND EXISTS(
			SELECT
				*
			FROM
				[Table3] [r3]
			WHERE
				[r3].[Id_3] = [rTable1].[Id_1]
		)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Table3]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Table1]

