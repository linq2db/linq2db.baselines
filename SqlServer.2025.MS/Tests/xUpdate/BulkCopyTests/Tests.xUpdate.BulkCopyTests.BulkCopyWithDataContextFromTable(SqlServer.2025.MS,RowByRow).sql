INSERT BULK [SimpleBulkCopyTable](Id)

INSERT BULK [SimpleBulkCopyTable](Id)

-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

