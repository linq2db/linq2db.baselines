BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DateOnlyTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DateOnlyTable]
(
	[Date] Date NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

SELECT TOP 2
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DateOnlyTable]

