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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1

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

