-- SqlServer.SA SqlServer.2019

INSERT INTO [Table2]
(
	[ID]
)
SELECT
	[t].[ID]
FROM
	[Table1] [t]

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[Table2] [t1]

