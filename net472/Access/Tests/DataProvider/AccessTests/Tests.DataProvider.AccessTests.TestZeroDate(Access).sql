BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DateTable]
(
	[ID]   Int      NOT NULL,
	[Date] DateTime NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Date_1 Date -- DateTime
SET     @Date_1 = #1899-12-29#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	1,
	@Date_1
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Date_1 Date -- DateTime
SET     @Date_1 = #1899-12-30#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	2,
	@Date_1
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Date_1 Date -- DateTime
SET     @Date_1 = #1899-12-31#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	3,
	@Date_1
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Date_1 Date -- DateTime
SET     @Date_1 = #1900-01-01#

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	4,
	@Date_1
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DateTable]

