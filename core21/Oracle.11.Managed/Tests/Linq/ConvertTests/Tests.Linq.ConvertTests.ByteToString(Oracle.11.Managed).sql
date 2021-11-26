﻿BeforeExecute
-- SQLite.Default SQLite.MS SQLite

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
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p."c1"
FROM
	(
		SELECT
			Cast(Cast(t.ID as Number(3)) as VarChar(3)) as "c1"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	Length(p."c1") > 0

