BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TableWithGuid
(
	Id
)
VALUES
(
	toUUID('193ae7f4-5309-4eee-a746-27b28c7e30f3')
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	lowerUTF8(toString(t.Id))
FROM
	TableWithGuid t
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	position(lowerUTF8(toString(t.Id)), '7f4-53') > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	startsWith(lowerUTF8(toString(t.Id)), '193ae')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	position(lowerUTF8(toString(t.Id)), '8f4-53') > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	startsWith(lowerUTF8(toString(t.Id)), '293ae')

