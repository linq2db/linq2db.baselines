﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TrimTestTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TrimTestTable]
(
	[ID]   Int          NOT NULL,
	[Data] NVarChar(50)     NULL,

	CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	1,
	'***XXX***'
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	2,
	'***HHH***'
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

UPDATE
	[TrimTestTable] [t1]
SET
	[t1].[Data] = '***III***'
WHERE
	[t1].[ID] = 3

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = '***OOO***'
WHERE
	[t].[Data] = '***XXX***'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = '***SSS***'
WHERE
	[t].[Data] = '***HHH***'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TrimTestTable]

