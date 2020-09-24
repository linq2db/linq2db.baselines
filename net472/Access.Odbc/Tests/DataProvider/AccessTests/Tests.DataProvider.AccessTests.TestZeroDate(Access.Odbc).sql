BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DateTable]
(
	[ID]   Int      NOT NULL,
	[Date] DateTime NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Date_1 DateTime
SET     @Date_1 = #1899-12-29#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	1,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Date_1 DateTime
SET     @Date_1 = #1899-12-30#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	2,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Date_1 DateTime
SET     @Date_1 = #1899-12-31#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	3,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Date_1 DateTime
SET     @Date_1 = #1900-01-01#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	4,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[DateTable] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DateTable]

