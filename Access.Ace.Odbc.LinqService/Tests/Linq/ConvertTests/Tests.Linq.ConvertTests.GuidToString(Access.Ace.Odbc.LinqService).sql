BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @guid NVarChar(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	[t].[GuidValue]
FROM
	[LinqDataTypes] [t]
WHERE
	LCase(Mid(CStr([t].[GuidValue]), 2, 36)) = ?

