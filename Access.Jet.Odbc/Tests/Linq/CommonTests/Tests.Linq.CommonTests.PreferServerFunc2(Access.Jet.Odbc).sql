BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Length  -- Int32
SET     @Length = 0

SELECT
	Len([p].[FirstName]) + CVar(?)
FROM
	[Person] [p]

