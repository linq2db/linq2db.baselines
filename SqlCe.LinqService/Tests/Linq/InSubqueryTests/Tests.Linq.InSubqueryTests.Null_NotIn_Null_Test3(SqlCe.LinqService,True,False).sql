﻿BeforeExecute
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
	NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[p].[ID] = [t].[ID]
	)

BeforeExecute
-- SqlCe

DROP TABLE [test_in_2]

BeforeExecute
-- SqlCe

DROP TABLE [test_in_1]

