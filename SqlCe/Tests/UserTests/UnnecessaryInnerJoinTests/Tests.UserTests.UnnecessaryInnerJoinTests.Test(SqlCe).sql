BeforeExecute
-- SqlCe

DROP TABLE [Table1]

BeforeExecute
-- SqlCe

CREATE TABLE [Table1]
(
	[Field1] Int  NOT NULL IDENTITY,
	[Field2] Int  NOT NULL,

	CONSTRAINT [PK_Table1] PRIMARY KEY ([Field1])
)

BeforeExecute
-- SqlCe

DROP TABLE [Table2]

BeforeExecute
-- SqlCe

CREATE TABLE [Table2]
(
	[Field2] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_Table2] PRIMARY KEY ([Field2])
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Field2]
FROM
	[Table2] [t1]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Table1] [x]
		WHERE
			[t1].[Field2] = [x].[Field2] AND CAST([x].[Field1] AS BigInt) IN (1, 2, 3)
	)

BeforeExecute
-- SqlCe

DROP TABLE [Table2]

BeforeExecute
-- SqlCe

DROP TABLE [Table1]

