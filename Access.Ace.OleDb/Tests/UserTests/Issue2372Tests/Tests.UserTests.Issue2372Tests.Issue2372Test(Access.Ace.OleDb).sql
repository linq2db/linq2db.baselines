BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [InventoryResource]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Guid
SET     @Id = {guid {bc7b663d-0fde-4327-8f92-5d8cc3a11d11}}
DECLARE @Status VarWChar(4) -- String
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

