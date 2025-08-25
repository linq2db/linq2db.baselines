BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'InventoryResource') IS NOT NULL)
	DROP TABLE [InventoryResource]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Char(36) -- AnsiStringFixedLength
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Status UniVarChar(4) -- String
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

