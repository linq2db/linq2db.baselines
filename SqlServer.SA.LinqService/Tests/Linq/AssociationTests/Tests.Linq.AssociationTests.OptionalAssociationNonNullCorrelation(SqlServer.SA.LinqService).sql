﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Table1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Table1]', N'U') IS NULL)
	CREATE TABLE [Table1]
	(
		[ID]  Int NOT NULL,
		[ID2] Int     NULL,

		CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Table2]', N'U') IS NULL)
	CREATE TABLE [Table2]
	(
		[ID]  Int NOT NULL,
		[ID3] Int     NULL,

		CONSTRAINT [PK_Table2] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Table3]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Table3]', N'U') IS NULL)
	CREATE TABLE [Table3]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_Table3] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Table4]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Table4]', N'U') IS NULL)
	CREATE TABLE [Table4]
	(
		[ID]  Int NOT NULL,
		[ID3] Int     NULL,

		CONSTRAINT [PK_Table4] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

SELECT
	[m_1].[ID],
	[d].[ID],
	[d].[ID3]
FROM
	(
		SELECT DISTINCT
			[a_Table3].[ID]
		FROM
			[Table1] [r]
				LEFT JOIN [Table2] [a_Table2] ON ([r].[ID2] = [a_Table2].[ID] OR [r].[ID2] IS NULL AND [a_Table2].[ID] IS NULL)
				LEFT JOIN [Table3] [a_Table3] ON ([a_Table2].[ID3] = [a_Table3].[ID] OR [a_Table2].[ID3] IS NULL AND [a_Table3].[ID] IS NULL)
				LEFT JOIN [Table3] [a_Table3_1] ON ([a_Table2].[ID3] = [a_Table3_1].[ID] OR [a_Table2].[ID3] IS NULL AND [a_Table3_1].[ID] IS NULL)
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[Table4] [id]
				WHERE
					[id].[ID] = [r].[ID] AND [a_Table3_1].[ID] IS NOT NULL AND
					([a_Table3_1].[ID] = [id].[ID3])
			)
	) [m_1]
		INNER JOIN [Table4] [d] ON ([m_1].[ID] = [d].[ID3] OR [m_1].[ID] IS NULL AND [d].[ID3] IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[ID],
	[r].[ID2],
	[a_Table2].[ID],
	[a_Table2].[ID3],
	[a_Table3].[ID]
FROM
	[Table1] [r]
		LEFT JOIN [Table2] [a_Table2] ON ([r].[ID2] = [a_Table2].[ID] OR [r].[ID2] IS NULL AND [a_Table2].[ID] IS NULL)
		LEFT JOIN [Table3] [a_Table3] ON ([a_Table2].[ID3] = [a_Table3].[ID] OR [a_Table2].[ID3] IS NULL AND [a_Table3].[ID] IS NULL)
		LEFT JOIN [Table3] [a_Table3_1] ON ([a_Table2].[ID3] = [a_Table3_1].[ID] OR [a_Table2].[ID3] IS NULL AND [a_Table3_1].[ID] IS NULL)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table4] [id]
		WHERE
			[id].[ID] = [r].[ID] AND [a_Table3_1].[ID] IS NOT NULL AND
			([a_Table3_1].[ID] = [id].[ID3])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[m_1].[ID],
	[d].[ID],
	[d].[ID3]
FROM
	(
		SELECT DISTINCT
			[a_Table3].[ID]
		FROM
			[Table1] [t1]
				LEFT JOIN [Table2] [a_Table2] ON ([t1].[ID2] = [a_Table2].[ID] OR [t1].[ID2] IS NULL AND [a_Table2].[ID] IS NULL)
				LEFT JOIN [Table3] [a_Table3] ON ([a_Table2].[ID3] = [a_Table3].[ID] OR [a_Table2].[ID3] IS NULL AND [a_Table3].[ID] IS NULL)
	) [m_1]
		INNER JOIN [Table4] [d] ON ([m_1].[ID] = [d].[ID3] OR [m_1].[ID] IS NULL AND [d].[ID3] IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[ID2],
	[a_Table2].[ID],
	[a_Table2].[ID3],
	[a_Table3].[ID]
FROM
	[Table1] [t1]
		LEFT JOIN [Table2] [a_Table2] ON ([t1].[ID2] = [a_Table2].[ID] OR [t1].[ID2] IS NULL AND [a_Table2].[ID] IS NULL)
		LEFT JOIN [Table3] [a_Table3] ON ([a_Table2].[ID3] = [a_Table3].[ID] OR [a_Table2].[ID3] IS NULL AND [a_Table3].[ID] IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Table4]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Table3]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Table1]

