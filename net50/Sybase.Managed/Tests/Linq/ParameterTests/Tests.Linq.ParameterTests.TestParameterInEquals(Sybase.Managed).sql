BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @param Integer -- Int32
SET     @param = NULL

SELECT
	[_].[Id]
FROM
	[TestEqualsTable1] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [__]
		WHERE
			[_].[Id] = [__].[FK] AND [__].[Id] = @param
	)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestEqualsTable2') IS NOT NULL)
	DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestEqualsTable1') IS NOT NULL)
	DROP TABLE [TestEqualsTable1]

