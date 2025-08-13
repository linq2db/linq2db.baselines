BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @value Double
SET     @value = NULL

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CVar(@value) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @value Double
SET     @value = 3147483648

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CVar(@value) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

