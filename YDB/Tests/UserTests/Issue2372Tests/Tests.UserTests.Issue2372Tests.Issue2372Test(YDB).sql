-- YDB Ydb

DROP TABLE IF EXISTS InventoryResource

-- YDB Ydb
DECLARE $Id Uuid -- Guid
SET     $Id = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $Status Text(4) -- String
SET     $Status = 'Used'u

INSERT INTO InventoryResource
(
	Id,
	Status
)
VALUES
(
	$Id,
	$Status
)

