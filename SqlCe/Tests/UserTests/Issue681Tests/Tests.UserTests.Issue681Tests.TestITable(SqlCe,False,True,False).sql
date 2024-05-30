BeforeExecute
-- SqlCe

DROP TABLE [Issue681Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID],
	[t1].[Value] as [Value_1]
FROM
	[Issue681Table] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue681Table]

