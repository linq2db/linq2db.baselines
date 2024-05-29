BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TrimTestTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TrimTestTable]
(
	[ID]   Int          NOT NULL,
	[Data] NVarChar(50)     NULL,

	CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

UPDATE
	[TrimTestTable] [t1]
SET
	[t1].[Data] = '***III***'
WHERE
	[t1].[ID] = 3

BeforeExecute
-- Access.Odbc AccessODBC

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = '***OOO***'
WHERE
	[t].[Data] = '***XXX***'

BeforeExecute
-- Access.Odbc AccessODBC

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = '***SSS***'
WHERE
	[t].[Data] = '***HHH***'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TrimTestTable]

