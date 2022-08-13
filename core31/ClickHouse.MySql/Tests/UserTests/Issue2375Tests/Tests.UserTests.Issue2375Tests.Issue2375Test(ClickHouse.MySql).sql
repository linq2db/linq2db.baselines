BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InventoryResourceDTO
(
	Id                UUID,
	Status            Int32,
	ResourceID        UUID,
	ModifiedTimeStamp Nullable(DateTime64(7))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WmsLoadCarrierDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS WmsLoadCarrierDTO
(
	Id            UUID,
	ResourceLabel Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO WmsLoadCarrierDTO
(
	Id,
	ResourceLabel
)
VALUES
(
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	'b'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InventoryResourceDTO
(
	Id,
	Status,
	ResourceID,
	ModifiedTimeStamp
)
VALUES
(
	toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),
	toInt32(40),
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toDateTime64('2020-02-29 15:54:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InventoryResourceDTO
(
	Id,
	Status,
	ResourceID,
	ModifiedTimeStamp
)
VALUES
(
	toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),
	toInt32(40),
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toDateTime64('2020-02-29 15:54:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	inventory.Status,
	lc.ResourceLabel
FROM
	InventoryResourceDTO inventory
		INNER JOIN WmsLoadCarrierDTO lc ON inventory.ResourceID = lc.Id
GROUP BY
	inventory.Status,
	lc.ResourceLabel
HAVING
	Count(*) > toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	inventory.Id,
	inventory.Status,
	inventory.ResourceID,
	inventory.ModifiedTimeStamp
FROM
	InventoryResourceDTO inventory
		INNER JOIN WmsLoadCarrierDTO lc ON inventory.ResourceID = lc.Id
WHERE
	inventory.Status = toInt32(40) AND lc.ResourceLabel = 'b'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WmsLoadCarrierDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

