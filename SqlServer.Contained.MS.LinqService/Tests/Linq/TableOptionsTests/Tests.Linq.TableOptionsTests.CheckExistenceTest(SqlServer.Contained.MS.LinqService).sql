﻿BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NULL)
	CREATE TABLE [DisposableTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [DisposableTable]

