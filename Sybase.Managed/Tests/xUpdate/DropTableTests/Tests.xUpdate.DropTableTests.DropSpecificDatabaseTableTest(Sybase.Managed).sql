﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DropTableTest') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	USER_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TestDataCore].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[TestDataCore].[dbo].[DropTableTest] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [TestDataCore].[dbo].[DropTableTest]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[TestDataCore].[dbo].[DropTableTest] [t1]

