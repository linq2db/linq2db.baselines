﻿BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [InventoryResource]

BeforeExecute
--  SqlServer.2019.MS SqlServer.2019
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

