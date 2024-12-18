BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TABLE1]', N'U') IS NOT NULL)
	DROP TABLE [TABLE1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TABLE1]', N'U') IS NULL)
	CREATE TABLE [TABLE1]
	(
		[ID1]   Int            NOT NULL,
		[NAME1] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TABLE1] PRIMARY KEY CLUSTERED ([ID1])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [TABLE1]
(
	[ID1],
	[NAME1]
)
VALUES
(1,N'Some1'),
(2,N'Some2')

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TABLE2]', N'U') IS NOT NULL)
	DROP TABLE [TABLE2]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TABLE2]', N'U') IS NULL)
	CREATE TABLE [TABLE2]
	(
		[ID2]      Int NOT NULL,
		[TABLE1ID] Int NOT NULL,

		CONSTRAINT [PK_TABLE2] PRIMARY KEY CLUSTERED ([ID2])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [TABLE2]
(
	[ID2],
	[TABLE1ID]
)
VALUES
(10,1),
(20,2)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @str NVarChar(4000) -- String
SET     @str = N'Some1'

SELECT
	[row2].[ID2]
FROM
	[TABLE2] [row2]
WHERE
	[row2].[TABLE1ID] IN (
		SELECT
			[row1].[ID1]
		FROM
			[TABLE1] [row1]
		WHERE
			[row1].[NAME1] = @str AND [row1].[NAME1] IS NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @str NVarChar(4000) -- String
SET     @str = N'Some2'

SELECT
	[row2].[ID2]
FROM
	[TABLE2] [row2]
WHERE
	[row2].[TABLE1ID] IN (
		SELECT
			[row1].[ID1]
		FROM
			[TABLE1] [row1]
		WHERE
			[row1].[NAME1] = @str AND [row1].[NAME1] IS NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TABLE2]', N'U') IS NOT NULL)
	DROP TABLE [TABLE2]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TABLE1]', N'U') IS NOT NULL)
	DROP TABLE [TABLE1]

