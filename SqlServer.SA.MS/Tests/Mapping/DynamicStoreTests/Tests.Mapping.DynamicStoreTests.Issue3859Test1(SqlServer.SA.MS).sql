﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [DynamicColumnsTestTable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[DynamicColumnsTestTable]', N'U') IS NULL)
	CREATE TABLE [DynamicColumnsTestTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x].[Id]
FROM
	[DynamicColumnsTestTable] [x]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [DynamicColumnsTestTable]

