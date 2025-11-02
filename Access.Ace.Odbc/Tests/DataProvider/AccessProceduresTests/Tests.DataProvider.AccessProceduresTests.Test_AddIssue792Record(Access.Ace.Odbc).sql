-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

-- Access.Ace.Odbc AccessODBC
DECLARE @unused Int -- Int32
SET     @unused = 100500

{ CALL AddIssue792Record(?) }

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

