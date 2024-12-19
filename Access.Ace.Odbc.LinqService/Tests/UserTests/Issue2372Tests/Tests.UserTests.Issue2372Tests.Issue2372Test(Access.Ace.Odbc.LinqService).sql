BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InventoryResource]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InventoryResource]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [InventoryResource]
(
	[Id]     Guid     NOT NULL,
	[Status] NVarChar NOT NULL,

	CONSTRAINT [PK_InventoryResource] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @Status NVarChar(4) -- String
SET     @Status = 'Used'

INSERT INTO [InventoryResource]
(
	[Id],
	[Status]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InventoryResource]

