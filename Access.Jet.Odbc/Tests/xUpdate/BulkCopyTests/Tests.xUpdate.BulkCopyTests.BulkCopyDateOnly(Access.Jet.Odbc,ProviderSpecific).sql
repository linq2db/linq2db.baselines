BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Date Date
SET     @Date = #2021-01-01#

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

