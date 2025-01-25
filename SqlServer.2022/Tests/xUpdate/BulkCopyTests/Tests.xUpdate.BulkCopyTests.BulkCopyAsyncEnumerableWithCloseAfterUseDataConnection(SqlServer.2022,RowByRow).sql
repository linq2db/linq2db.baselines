BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

