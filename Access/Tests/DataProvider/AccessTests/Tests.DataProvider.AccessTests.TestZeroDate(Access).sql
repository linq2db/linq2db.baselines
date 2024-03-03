BeforeExecute
-- Access AccessOleDb

DROP TABLE [DateTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DateTable]
(
	[ID]   Int      NOT NULL,
	[Date] DateTime NOT NULL
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	1,
	#1899-12-29#
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	2,
	#1899-12-30#
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	3,
	#1899-12-31#
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	4,
	#1900-01-01#
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[DateTable] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DateTable]

