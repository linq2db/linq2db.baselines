BeforeExecute
-- SqlCe

DROP TABLE [InventoryResource]

BeforeExecute
-- SqlCe

DROP TABLE [InventoryResource]

BeforeExecute
-- SqlCe

CREATE TABLE [InventoryResource]
(
	[Id]     UNIQUEIDENTIFIER NOT NULL,
	[Status] NVarChar(4000)   NOT NULL,

	CONSTRAINT [PK_InventoryResource] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Status NVarChar(4) -- String
SET     @Status = 'Used'

INSERT INTO [InventoryResource]
(
	[Id],
	[Status]
)
VALUES
(
	@Id,
	@Status
)

BeforeExecute
-- SqlCe

DROP TABLE [InventoryResource]

