﻿BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [sample_table_temp]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[sample_table_temp]', N'U') IS NULL)
	CREATE TABLE [sample_table_temp]
	(
		[id]    Int NOT NULL,
		[value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(1,2)

BeforeExecute
-- SqlServer.2019

SELECT TOP (1)
	N'[database].[schema].[table_name]',
	N'[database].[schema].[table_name]',
	N'[table_name]',
	N'table_name',
	N'[schema].[table_name]',
	N'[database]..[table_name]'
FROM
	[sample_table_temp] [t]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [sample_table_temp]

