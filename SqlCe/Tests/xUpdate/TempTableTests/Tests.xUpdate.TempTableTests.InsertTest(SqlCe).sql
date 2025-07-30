BeforeExecute
-- SqlCe

INSERT INTO [Table2]
(
	[ID]
)
SELECT
	[t].[ID]
FROM
	[Table1] [t]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID],
	[t1].[Date] as [Date_1]
FROM
	[Table2] [t1]

