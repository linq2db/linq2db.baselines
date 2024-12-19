BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @name VarWChar(8) -- String
SET     @name = 'Insert16'
DECLARE @idx Integer -- Int32
SET     @idx = 4

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert16',
	CStr(Len(@name) + @idx),
	'M'
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%'

