-- SqlServer.2017

INSERT INTO [Table2]
(
	[ID]
)
SELECT
	[t].[ID]
FROM
	[Table1] [t]

-- SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[Table2] [t1]

