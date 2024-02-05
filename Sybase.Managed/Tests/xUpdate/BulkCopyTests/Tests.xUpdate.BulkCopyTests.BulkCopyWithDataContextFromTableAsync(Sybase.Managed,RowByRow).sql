BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SimpleBulkCopyTable') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SimpleBulkCopyTable') IS NULL)
	EXECUTE('
		CREATE TABLE [SimpleBulkCopyTable]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 1

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 2

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 10

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 20

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 30

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SimpleBulkCopyTable') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

