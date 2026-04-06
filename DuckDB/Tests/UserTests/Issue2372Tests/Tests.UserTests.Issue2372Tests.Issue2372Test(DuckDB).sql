-- DuckDB

DROP TABLE IF EXISTS InventoryResource

-- DuckDB
DECLARE $Id  -- Guid
SET     $Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID
DECLARE $Status NVarChar(4) -- String
SET     $Status = 'Used'

INSERT INTO InventoryResource
(
	Id,
	Status
)
VALUES
(
	CAST($Id AS UUID),
	CAST($Status AS VARCHAR)
)

