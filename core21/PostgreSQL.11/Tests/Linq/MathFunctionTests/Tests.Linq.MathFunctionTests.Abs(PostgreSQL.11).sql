BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[ID], 
	[t1].[MoneyValue], 
	[t1].[DateTimeValue], 
	[t1].[BoolValue], 
	[t1].[GuidValue], 
	[t1].[BinaryValue], 
	[t1].[SmallIntValue], 
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	t.c1
FROM
	( 
		SELECT 
			Abs(p."MoneyValue") as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 > 0

