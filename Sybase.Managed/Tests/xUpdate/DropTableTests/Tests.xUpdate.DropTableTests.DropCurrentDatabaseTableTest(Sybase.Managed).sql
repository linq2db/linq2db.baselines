-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DropTableTest') IS NOT NULL)
	DROP TABLE [DropTableTest]

-- Sybase.Managed Sybase

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- Sybase.Managed Sybase

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- Sybase.Managed Sybase

DROP TABLE [DropTableTest]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

