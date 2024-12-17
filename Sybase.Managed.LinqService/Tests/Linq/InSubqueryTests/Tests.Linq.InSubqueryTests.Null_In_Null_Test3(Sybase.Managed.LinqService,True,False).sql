BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_1') IS NOT NULL)
	DROP TABLE [test_in_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_1') IS NULL)
	EXECUTE('
		CREATE TABLE [test_in_1]
		(
			[ID] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_2') IS NOT NULL)
	DROP TABLE [test_in_2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_2') IS NULL)
	EXECUTE('
		CREATE TABLE [test_in_2]
		(
			[ID] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID] OR [t].[ID] IS NULL AND [p].[ID] IS NULL
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_2') IS NOT NULL)
	DROP TABLE [test_in_2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_1') IS NOT NULL)
	DROP TABLE [test_in_1]

