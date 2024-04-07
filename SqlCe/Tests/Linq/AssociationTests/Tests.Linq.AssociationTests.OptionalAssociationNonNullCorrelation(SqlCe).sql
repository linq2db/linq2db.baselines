﻿BeforeExecute
-- SqlCe

DROP TABLE [Table1]

BeforeExecute
-- SqlCe

CREATE TABLE [Table1]
(
	[ID]  Int NOT NULL,
	[ID2] Int     NULL,

	CONSTRAINT [PK_Table1] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
SELECT 1,1 UNION ALL
SELECT 2,2

BeforeExecute
-- SqlCe

DROP TABLE [Table2]

BeforeExecute
-- SqlCe

CREATE TABLE [Table2]
(
	[ID]  Int NOT NULL,
	[ID3] Int     NULL,

	CONSTRAINT [PK_Table2] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [Table2]
(
	[ID],
	[ID3]
)
SELECT 1,1

BeforeExecute
-- SqlCe

DROP TABLE [Table3]

BeforeExecute
-- SqlCe

CREATE TABLE [Table3]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Table3] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [Table3]
(
	[ID]
)
SELECT 1

BeforeExecute
-- SqlCe

DROP TABLE [Table4]

BeforeExecute
-- SqlCe

CREATE TABLE [Table4]
(
	[ID]  Int NOT NULL,
	[ID3] Int     NULL,

	CONSTRAINT [PK_Table4] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
SELECT 1,1 UNION ALL
SELECT 2,NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[ID],
	[r].[ID2]
FROM
	[Table1] [r]
		LEFT JOIN [Table2] [a_Table2] ON [r].[ID2] = [a_Table2].[ID]
		LEFT JOIN [Table3] [a_Table3] ON [a_Table2].[ID3] = [a_Table3].[ID]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table4] [id]
		WHERE
			[a_Table3].[ID] = [id].[ID3] AND [id].[ID] = [r].[ID]
	)

BeforeExecute
-- SqlCe

DROP TABLE [Table4]

BeforeExecute
-- SqlCe

DROP TABLE [Table3]

BeforeExecute
-- SqlCe

DROP TABLE [Table2]

BeforeExecute
-- SqlCe

DROP TABLE [Table1]

