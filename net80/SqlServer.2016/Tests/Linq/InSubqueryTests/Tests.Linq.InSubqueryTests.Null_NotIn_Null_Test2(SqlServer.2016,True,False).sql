﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_1]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NULL)
	CREATE TABLE [test_in_1]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(1),
(3),
(4),
(5)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NULL)
	CREATE TABLE [test_in_2]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(1),
(2),
(4),
(6),
(NULL)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_1]

