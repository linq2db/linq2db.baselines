INSERT BULK [SimpleBulkCopyTable](Id)

INSERT BULK [SimpleBulkCopyTable](Id)

-- SqlServer.Contained.MS SqlServer.2019
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

