BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestEqualsTable1') IS NOT NULL)
	DROP TABLE [TestEqualsTable1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestEqualsTable1') IS NULL)
	EXECUTE('
		CREATE TABLE [TestEqualsTable1]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestEqualsTable2') IS NOT NULL)
	DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestEqualsTable2') IS NULL)
	EXECUTE('
		CREATE TABLE [TestEqualsTable2]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @param Integer -- Int32
SET     @param = 0

SELECT
	[t1].[Id]
FROM
	[TestEqualsTable1] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [t2]
		WHERE
			[t1].[Id] = [t2].[FK] AND [t2].[Id] = @param
	)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestEqualsTable2') IS NOT NULL)
	DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestEqualsTable1') IS NOT NULL)
	DROP TABLE [TestEqualsTable1]

