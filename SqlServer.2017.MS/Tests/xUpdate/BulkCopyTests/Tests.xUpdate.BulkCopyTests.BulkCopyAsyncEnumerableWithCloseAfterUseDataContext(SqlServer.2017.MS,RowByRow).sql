BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
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

