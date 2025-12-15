-- SqlServer.2014

INSERT INTO [Table2]
(
	[ID]
)
SELECT
	[t].[ID]
FROM
	[Table1] [t]

-- SqlServer.2014

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[Table2] [t1]

