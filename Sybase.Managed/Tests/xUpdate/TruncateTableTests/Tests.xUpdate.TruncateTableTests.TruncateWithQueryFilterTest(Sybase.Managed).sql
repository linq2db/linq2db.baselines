-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTrun') IS NOT NULL)
	DROP TABLE [TestTrun]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTrunDetail') IS NOT NULL)
	DROP TABLE [TestTrunDetail]

-- Sybase.Managed Sybase

CREATE TABLE [TestTrunDetail]
(
	[ID]         Int NOT NULL,
	[TestTrunID] Int NOT NULL,
	[IsActive]   Bit NOT NULL,

	CONSTRAINT [PK_TestTrunDetail] PRIMARY KEY CLUSTERED ([ID])
)

-- Sybase.Managed Sybase

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] DECIMAL(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- Sybase.Managed Sybase

TRUNCATE TABLE [TestTrun]

-- Sybase.Managed Sybase

DROP TABLE [TestTrun]

-- Sybase.Managed Sybase

DROP TABLE [TestTrunDetail]

