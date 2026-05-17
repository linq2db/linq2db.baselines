-- Access.Jet.Odbc AccessODBC
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{00000000-0000-0000-0000-000000000000}'

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
UNION ALL
SELECT
	IIF(False, 0, NULL),
	IIF(False, 0, NULL),
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL),
	IIF(False, False, NULL),
	IIF(False, ?, NULL),
	IIF(False, 0, NULL),
	IIF(False, 0, NULL),
	IIF(False, 0, NULL),
	IIF(False, '', NULL)
FROM
	[LinqDataTypes] [d]

