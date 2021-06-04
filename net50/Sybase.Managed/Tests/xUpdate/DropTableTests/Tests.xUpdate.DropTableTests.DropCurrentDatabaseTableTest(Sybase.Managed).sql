BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DropTableTest') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [DropTableTest]
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
	[DropTableTest] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [DropTableTest]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

