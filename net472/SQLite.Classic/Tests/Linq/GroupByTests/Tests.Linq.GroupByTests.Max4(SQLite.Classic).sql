BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Date  -- DateTime
SET     @Date = '2020-02-29'

SELECT
	[t1_1].[MoneyValue]
FROM
	[LinqDataTypes] [t1_1]
		INNER JOIN (
			SELECT
				[sub].[ID],
				Max([sub].[DateTimeValue]) as [DateTimeValue]
			FROM
				[LinqDataTypes] [sub]
			WHERE
				[sub].[ID] = 1 AND DateTime([sub].[DateTimeValue]) <= DateTime(@Date)
			GROUP BY
				[sub].[ID]
		) [t1] ON [t1_1].[ID] = [t1].[ID] AND DateTime([t1_1].[DateTimeValue]) = DateTime([t1].[DateTimeValue])

