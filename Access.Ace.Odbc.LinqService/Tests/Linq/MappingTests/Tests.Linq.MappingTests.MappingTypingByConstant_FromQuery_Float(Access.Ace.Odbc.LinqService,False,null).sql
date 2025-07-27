BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value Real -- Single
SET     @value = NULL

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CVar(?) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value Real -- Single
SET     @value = 3.14748365E+09

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CVar(?) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

