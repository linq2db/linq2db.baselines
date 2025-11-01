-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestIdTrun') IS NOT NULL)
	DROP TABLE [TestIdTrun]

-- Sybase.Managed Sybase

CREATE TABLE [TestIdTrun]
(
	[ID]     Int             IDENTITY NOT NULL,
	[Field1] DECIMAL(18, 10)          NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- Sybase.Managed Sybase

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Sybase.Managed Sybase

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Sybase.Managed Sybase

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

-- Sybase.Managed Sybase

TRUNCATE TABLE [TestIdTrun]

-- Sybase.Managed Sybase

sp_chgattribute [TestIdTrun], 'identity_burn_max', 0, '0'

-- Sybase.Managed Sybase

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Sybase.Managed Sybase

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Sybase.Managed Sybase

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

-- Sybase.Managed Sybase

DROP TABLE [TestIdTrun]

