BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS InventoryResource

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Char(36) -- StringFixedLength
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Status VarChar(4) -- String
SET     @Status = 'Used'

INSERT INTO InventoryResource
(
	Id,
	Status
)
VALUES
(
	@Id,
	@Status
)

