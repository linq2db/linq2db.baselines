BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DateOnlyTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [DateOnlyTable]
(
	[Date] Date NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Date DBDate -- Date
SET     @Date = #2021-01-01#

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DateOnlyTable]

