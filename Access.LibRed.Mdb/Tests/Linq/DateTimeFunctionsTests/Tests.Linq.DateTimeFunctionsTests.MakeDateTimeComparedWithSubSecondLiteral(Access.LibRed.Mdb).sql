-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2010-01-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CDate('2010-01-01 10:00:' + Format([p].[ID] MOD 1, String('0', 2))) < @value

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2010-01-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CDate('2010-01-01 10:00:' + Format([p].[ID] MOD 1, String('0', 2))) >= @value

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2010-01-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [p]
WHERE
	CDate('2010-01-01 10:00:' + Format([p].[ID] MOD 1, String('0', 2))) = @value

