BeforeExecute
-- SqlCe

DROP TABLE [test_in_1]

BeforeExecute
-- SqlCe

CREATE TABLE [test_in_1]
(
	[ID] Int     NULL
)

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe

DROP TABLE [test_in_2]

BeforeExecute
-- SqlCe

CREATE TABLE [test_in_2]
(
	[ID] Int     NULL
)

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	CASE
		WHEN [t].[ID] IS NULL AND 1 IN (
			SELECT
				1
			FROM
				[test_in_2] [p]
			WHERE
				[p].[ID] IS NULL
		) OR [t].[ID] IS NOT NULL AND [t].[ID] IN (
			SELECT
				[p].[ID]
			FROM
				[test_in_2] [p]
		)
			THEN 1
		ELSE 0
	END = 0

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [test_in_2]

BeforeExecute
-- SqlCe

DROP TABLE [test_in_1]

