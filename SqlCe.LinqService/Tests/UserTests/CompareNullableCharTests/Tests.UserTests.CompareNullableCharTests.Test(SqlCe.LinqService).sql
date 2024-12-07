BeforeExecute
-- SqlCe

DROP TABLE [Table1]

BeforeExecute
-- SqlCe

CREATE TABLE [Table1]
(
	[Field1] Int       NOT NULL IDENTITY,
	[Foeld2] NChar(1)      NULL,

	CONSTRAINT [PK_Table1] PRIMARY KEY ([Field1])
)

BeforeExecute
-- SqlCe

SELECT
	[current_1].[Field1],
	[previous].[Field1] as [Field1_1]
FROM
	[Table1] [current_1],
	[Table1] [previous]
WHERE
	[current_1].[Foeld2] = [previous].[Foeld2] OR [current_1].[Foeld2] IS NULL AND [previous].[Foeld2] IS NULL

BeforeExecute
-- SqlCe

DROP TABLE [Table1]

