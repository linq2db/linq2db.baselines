BeforeExecute
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
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @ID2 Int -- Int32
SET     @ID2 = 1

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
VALUES
(
	@ID,
	@ID2
)

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @ID2 Int -- Int32
SET     @ID2 = 2

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
VALUES
(
	@ID,
	@ID2
)

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
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @ID3 Int -- Int32
SET     @ID3 = 1

INSERT INTO [Table2]
(
	[ID],
	[ID3]
)
VALUES
(
	@ID,
	@ID3
)

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
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO [Table3]
(
	[ID]
)
VALUES
(
	@ID
)

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
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @ID3 Int -- Int32
SET     @ID3 = 1

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @ID3 Int -- Int32
SET     @ID3 = NULL

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- SqlCe

SELECT
	[a_Table2].[ID],
	[a_Table2].[ID3],
	[a_Table3].[ID] as [ID_1]
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

