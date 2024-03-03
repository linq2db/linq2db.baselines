﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [test_in_1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NULL)
	CREATE TABLE [test_in_1]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 3

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NULL)
	CREATE TABLE [test_in_2]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 2

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[p].[ID] IS NOT NULL AND ([t].[ID] = [p].[ID])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [test_in_1]

