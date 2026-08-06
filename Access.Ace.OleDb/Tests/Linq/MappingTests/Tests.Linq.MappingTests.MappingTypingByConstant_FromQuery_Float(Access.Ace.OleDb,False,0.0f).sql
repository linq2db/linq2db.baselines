-- Access.Ace.OleDb AccessOleDb
DECLARE @value Single
SET     @value = 0

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CSng(@value) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Single
SET     @value = 3.14748365E+09

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CSng(@value) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

