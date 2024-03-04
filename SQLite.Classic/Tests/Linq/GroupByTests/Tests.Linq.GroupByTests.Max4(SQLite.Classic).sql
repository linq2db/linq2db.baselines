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
				[t2].[ID],
				Max([t2].[DateTimeValue]) as [DateTimeValue]
			FROM
				[LinqDataTypes] [t2]
			WHERE
				[t2].[ID] = 1 AND DateTime([t2].[DateTimeValue]) <= DateTime(@Date)
			GROUP BY
				[t2].[ID]
		) [t1] ON [t1_1].[ID] = [t1].[ID] AND DateTime([t1_1].[DateTimeValue]) = DateTime([t1].[DateTimeValue])

