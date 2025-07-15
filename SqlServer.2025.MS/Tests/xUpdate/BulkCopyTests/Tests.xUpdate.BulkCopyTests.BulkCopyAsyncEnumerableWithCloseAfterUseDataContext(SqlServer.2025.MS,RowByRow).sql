BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)
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

