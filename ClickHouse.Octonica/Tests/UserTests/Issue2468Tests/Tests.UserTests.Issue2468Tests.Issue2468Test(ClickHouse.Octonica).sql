-- ClickHouse.Octonica ClickHouse

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
	1,
	0,
	0
)

-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Status,
	x.Color,
	x.CMYKColor
FROM
	InventoryResourceDTO x
WHERE
	position(CASE
		WHEN 0 = x.Color THEN 'Blue'
		WHEN 10 = x.Color THEN 'Red'
		WHEN 20 = x.Color THEN 'Green'
		ELSE NULL
	END, 'Bl') > 0 AND
	position(CASE
		WHEN 0 = x.CMYKColor THEN 'Cyan'
		WHEN 10 = x.CMYKColor THEN 'Magenta'
		WHEN 20 = x.CMYKColor THEN 'Yellow'
		WHEN 40 = x.CMYKColor THEN 'Black'
		ELSE NULL
	END, 'Cya') > 0 AND
	position(CASE
		WHEN x.Status = 3 THEN 'Done'
		WHEN x.Status = 1 THEN 'Open'
		WHEN x.Status = 2 THEN 'InProgress'
		ELSE 'Unknown'
	END, 'en') > 0

