BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'DropTableTest') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DROP TABLE [DropTableTest]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

