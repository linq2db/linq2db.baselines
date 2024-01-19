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
DECLARE @Date Date -- DateTime
SET     @Date = #1899-12-29#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	1,
	@Date
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Date Date -- DateTime
SET     @Date = #1899-12-30#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	2,
	@Date
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Date Date -- DateTime
SET     @Date = #1899-12-31#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	3,
	@Date
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Date Date -- DateTime
SET     @Date = #1900-01-01#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	4,
	@Date
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

