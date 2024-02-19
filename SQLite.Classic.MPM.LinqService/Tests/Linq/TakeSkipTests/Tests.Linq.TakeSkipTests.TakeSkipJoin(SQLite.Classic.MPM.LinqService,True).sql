BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 15

SELECT
	[e].[ID],
	[p].[SmallIntValue]
FROM
	(
		SELECT
			[t3].[ID]
		FROM
			(
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
				UNION ALL
				SELECT
					[t2].[ID],
					[t2].[MoneyValue],
					[t2].[DateTimeValue],
					[t2].[BoolValue],
					[t2].[GuidValue],
					[t2].[BinaryValue],
					[t2].[SmallIntValue],
					[t2].[StringValue]
				FROM
					[LinqDataTypes] [t2]
			) [t3]
		LIMIT @take
	) [e]
		LEFT JOIN (
			SELECT
				[_1].[ID],
				[_1].[MoneyValue],
				[_1].[DateTimeValue],
				[_1].[BoolValue],
				[_1].[GuidValue],
				[_1].[BinaryValue],
				[_1].[SmallIntValue],
				[_1].[StringValue]
			FROM
				(
					SELECT
						[_].[ID],
						[_].[MoneyValue],
						[_].[DateTimeValue],
						[_].[BoolValue],
						[_].[GuidValue],
						[_].[BinaryValue],
						[_].[SmallIntValue],
						[_].[StringValue]
					FROM
						[LinqDataTypes] [_]
					UNION ALL
					SELECT
						[t4].[ID],
						[t4].[MoneyValue],
						[t4].[DateTimeValue],
						[t4].[BoolValue],
						[t4].[GuidValue],
						[t4].[BinaryValue],
						[t4].[SmallIntValue],
						[t4].[StringValue]
					FROM
						[LinqDataTypes] [t4]
				) [_1]
			LIMIT @take
		) [p] ON [p].[ID] = [e].[ID]
ORDER BY
	[e].[ID],
	[p].[ID]

