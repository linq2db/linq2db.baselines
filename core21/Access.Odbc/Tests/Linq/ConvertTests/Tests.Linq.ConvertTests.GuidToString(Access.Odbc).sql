BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t].[GuidValue]
FROM
	[LinqDataTypes] [t]
WHERE
	LCase(Mid([t].[GuidValue], 2, 36)) = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

