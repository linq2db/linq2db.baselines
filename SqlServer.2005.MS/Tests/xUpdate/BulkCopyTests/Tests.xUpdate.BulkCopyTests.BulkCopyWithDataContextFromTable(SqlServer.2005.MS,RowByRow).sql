INSERT BULK [SimpleBulkCopyTable](Id)

INSERT BULK [SimpleBulkCopyTable](Id)

-- SqlServer.2005.MS SqlServer.2005
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

