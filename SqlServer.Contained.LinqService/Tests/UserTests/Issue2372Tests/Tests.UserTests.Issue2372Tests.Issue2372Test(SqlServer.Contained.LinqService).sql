BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [InventoryResource]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [InventoryResource]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[InventoryResource]', N'U') IS NULL)
	CREATE TABLE [InventoryResource]
	(
		[Id]     UniqueIdentifier NOT NULL,
		[Status] NVarChar(Max)    NOT NULL,

		CONSTRAINT [PK_InventoryResource] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Status NVarChar(4000) -- String
SET     @Status = N'Used'

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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [InventoryResource]

