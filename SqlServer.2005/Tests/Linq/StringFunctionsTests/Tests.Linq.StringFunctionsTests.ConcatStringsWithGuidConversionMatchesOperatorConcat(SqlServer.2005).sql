-- SqlServer.2005
SELECT
	CASE
		WHEN (N'GuidConcatRow/' + Lower(CAST([f].[firstField] AS Char(36))) + N'/' + Lower(CAST([f].[secondField] AS Char(36)))) = SUBSTRING(N'/GuidConcatRow/' + Lower(CAST([f].[firstField] AS Char(36))) + N'/' + Lower(CAST([f].[secondField] AS Char(36))), 2, 2147483647)
			THEN 1
		ELSE 0
	END
FROM
	[GuidConcatRow] [f]

