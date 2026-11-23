-- YDB Ydb
DECLARE addMask Int32
SET     addMask = 3
DECLARE removeMask Int32
SET     removeMask = 12

UPDATE
	WarehouseTableDto
SET
	`Value` = BitCast((BitCast(BitCast((BitCast(WarehouseTableDto.`Value` AS Uint32) | BitCast($addMask AS Uint32)) AS Int32) AS Uint32) & BitCast(BitCast((~BitCast($removeMask AS Uint32)) AS Int32) AS Uint32)) AS Int32)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	WarehouseTableDto t1
LIMIT 2

