BeforeExecute
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
-- SqlServer.2016
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
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NULL)
	CREATE TABLE [test_in_2]
	(
		[ID] Int     NULL,
		[GV] Int     NULL
	)

BeforeExecute
-- SqlServer.2016
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @GV Int -- Int32
SET     @GV = 1

INSERT INTO [test_in_2]
(
	[ID],
	[GV]
)
VALUES
(
	@ID,
	@GV
)

BeforeExecute
-- SqlServer.2016
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @GV Int -- Int32
SET     @GV = 0

INSERT INTO [test_in_2]
(
	[ID],
	[GV]
)
VALUES
(
	@ID,
	@GV
)

BeforeExecute
-- SqlServer.2016
DECLARE @ID Int -- Int32
SET     @ID = NULL
DECLARE @GV Int -- Int32
SET     @GV = NULL

INSERT INTO [test_in_2]
(
	[ID],
	[GV]
)
VALUES
(
	@ID,
	@GV
)

BeforeExecute
-- SqlServer.2016

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			(
				SELECT
					MIN([g_1].[ID]) as [In_1]
				FROM
					[test_in_2] [g_1]
				GROUP BY
					[g_1].[GV]
			) [t1]
		WHERE
			[t].[ID] = [t1].[In_1] OR [t].[ID] IS NULL AND [t1].[In_1] IS NULL
	)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_1]

