﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestIdTrun]', N'U') IS NOT NULL)
	DROP TABLE [TestIdTrun]

BeforeExecute
-- SqlServer.2008

CREATE TABLE [TestIdTrun]
(
	[ID]     Int      NOT NULL IDENTITY,
	[Field1] Decimal  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t2].[ID],
	[t2].[Field1]
FROM
	(
		SELECT
			[t1].[ID],
			[t1].[Field1],
			ROW_NUMBER() OVER (ORDER BY [t1].[ID]) as [RN]
		FROM
			[TestIdTrun] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 2)
ORDER BY
	[t2].[ID]

BeforeExecute
-- SqlServer.2008

TRUNCATE TABLE [TestIdTrun]

BeforeExecute
-- SqlServer.2008

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t2].[ID],
	[t2].[Field1]
FROM
	(
		SELECT
			[t1].[ID],
			[t1].[Field1],
			ROW_NUMBER() OVER (ORDER BY [t1].[ID]) as [RN]
		FROM
			[TestIdTrun] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 2)
ORDER BY
	[t2].[ID]

BeforeExecute
-- SqlServer.2008

DROP TABLE [TestIdTrun]

