﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##temp_table]', N'U') IS NOT NULL)
	DROP TABLE [##temp_table]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##temp_table]', N'U') IS NULL)
	CREATE TABLE [##temp_table]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [##temp_table]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	2
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[##temp_table] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##temp_table]', N'U') IS NULL)
	CREATE TABLE [##temp_table]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##temp_table]', N'U') IS NOT NULL)
	DROP TABLE [##temp_table]

