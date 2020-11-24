﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[test_temp]', N'U') IS NULL)
	CREATE TABLE [test_temp]
	(
		[ID]     Int      NOT NULL IDENTITY,
		[Field1] Decimal  NOT NULL,

		CONSTRAINT [PK_test_temp] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [test_temp]
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
DECLARE @take Int -- Int32
SET     @take = 2

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
			[test_temp] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2008

DELETE FROM [test_temp]

BeforeExecute
-- SqlServer.2008

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [test_temp]
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
DECLARE @take Int -- Int32
SET     @take = 2

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
			[test_temp] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[test_temp]', N'U') IS NOT NULL)
	DROP TABLE [test_temp]

