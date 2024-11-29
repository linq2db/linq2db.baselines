BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DateTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [DateTable]
(
	[ID]   Int      NOT NULL,
	[Date] DateTime NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	1,
	DateSerial(1899, 12, 29)
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	2,
	DateSerial(1899, 12, 30)
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	3,
	DateSerial(1899, 12, 31)
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	4,
	DateSerial(1900, 1, 1)
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[DateTable] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DateTable]

