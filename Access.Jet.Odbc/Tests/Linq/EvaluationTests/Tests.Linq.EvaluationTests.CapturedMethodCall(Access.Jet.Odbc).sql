-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [ClientEvaluatedRecord]
(
	[ID]
)
VALUES
(
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 5

SELECT TOP 2
	[t1].[ID]
FROM
	[ClientEvaluatedRecord] [t1]
WHERE
	[t1].[ID] = ?

