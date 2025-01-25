BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

