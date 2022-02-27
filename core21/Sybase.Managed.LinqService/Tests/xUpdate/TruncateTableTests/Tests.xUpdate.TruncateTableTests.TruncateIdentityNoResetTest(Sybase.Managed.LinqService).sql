BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [TestIdTrun]

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [TestIdTrun]
(
	[ID]     Int     IDENTITY NOT NULL,
	[Field1] Decimal          NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Sybase.Managed Sybase

TRUNCATE TABLE [TestIdTrun]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [TestIdTrun]

