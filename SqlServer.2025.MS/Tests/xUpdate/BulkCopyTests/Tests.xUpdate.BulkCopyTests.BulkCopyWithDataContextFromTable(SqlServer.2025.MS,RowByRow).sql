BeforeExecute
INSERT BULK [SimpleBulkCopyTable](Id)

BeforeExecute
INSERT BULK [SimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
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

