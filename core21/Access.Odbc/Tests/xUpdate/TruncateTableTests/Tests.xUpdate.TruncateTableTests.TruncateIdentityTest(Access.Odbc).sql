﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TestIdTrun]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TestIdTrun]
(
	[ID]     Int      NOT NULL IDENTITY,
	[Field1] Decimal  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM [TestIdTrun]

BeforeExecute
-- Access.Odbc AccessODBC

ALTER TABLE [TestIdTrun] ALTER COLUMN [ID] COUNTER(1,1)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TestIdTrun]

