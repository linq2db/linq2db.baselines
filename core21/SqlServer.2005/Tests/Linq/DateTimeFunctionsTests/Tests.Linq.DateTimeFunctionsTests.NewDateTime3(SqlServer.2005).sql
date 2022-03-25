BeforeExecute
-- SqlServer.2005

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(DateTime, CASE
				WHEN DatePart(year, [p].[DateTimeValue]) IS NULL
					THEN N''
				ELSE Convert(NVarChar(11), DatePart(year, [p].[DateTimeValue]))
			END + N'-10-1 20:35:44', 120) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

