﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [test_in_1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NULL)
	CREATE TABLE [test_in_1]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 4

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = NULL

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NULL)
	CREATE TABLE [test_in_2]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 4

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 6

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = NULL

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[p].[ID] = [t].[ID]
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [test_in_1]

