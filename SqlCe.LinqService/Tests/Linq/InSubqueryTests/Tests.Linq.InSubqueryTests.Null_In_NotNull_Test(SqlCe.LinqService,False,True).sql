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
-- SqlCe

DROP TABLE [test_in_2]

BeforeExecute
-- SqlCe

CREATE TABLE [test_in_2]
(
	[ID] Int NOT NULL
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

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
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
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [test_in_2]

BeforeExecute
-- SqlCe

DROP TABLE [test_in_1]

