BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InventoryResourceDTO
(
	Id        UUID,
	Status    Int32,
	Color     Int32,
	CMYKColor Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InventoryResourceDTO
(
	Id,
	Status,
	Color,
	CMYKColor
)
VALUES
(
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toInt32(1),
	toInt32(0),
	toInt32(0)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Status,
	x.Color,
	x.CMYKColor
FROM
	InventoryResourceDTO x
WHERE
	(position(CASE
		WHEN toInt32(0) = x.Color THEN 'Blue'
		WHEN toInt32(10) = x.Color
			THEN 'Red'
		WHEN toInt32(20) = x.Color
			THEN 'Green'
		ELSE NULL
	END, 'Bl') > toInt32(0)) AND
	(position(CASE
		WHEN toInt32(0) = x.CMYKColor
			THEN 'Cyan'
		WHEN toInt32(10) = x.CMYKColor
			THEN 'Magenta'
		WHEN toInt32(20) = x.CMYKColor
			THEN 'Yellow'
		WHEN toInt32(40) = x.CMYKColor
			THEN 'Black'
		ELSE NULL
	END, 'Cya') > toInt32(0)) AND
	(position(CASE
		WHEN x.Status = toInt32(3)
			THEN 'Done'
		WHEN x.Status = toInt32(1)
			THEN 'Open'
		WHEN x.Status = toInt32(2)
			THEN 'InProgress'
		ELSE 'Unknown'
	END, 'en') > toInt32(0))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

