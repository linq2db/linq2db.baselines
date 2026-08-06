-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

