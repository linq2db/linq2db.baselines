-- SqlServer.2022

INSERT INTO [Table2]
(
	[ID]
)
SELECT
	[t].[ID]
FROM
	[Table1] [t]

-- SqlServer.2022

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[Table2] [t1]

