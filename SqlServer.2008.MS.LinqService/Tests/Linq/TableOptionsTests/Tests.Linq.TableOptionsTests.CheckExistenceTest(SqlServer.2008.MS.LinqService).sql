﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NULL)
	CREATE TABLE [DisposableTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NOT NULL)
	DROP TABLE [DisposableTable]

