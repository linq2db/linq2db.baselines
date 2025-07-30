BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	lowerUTF8(toString(t.Id))
FROM
	TableWithGuid t
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	position(lowerUTF8(toString(t.Id)), '63d-0f') > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	startsWith(lowerUTF8(toString(t.Id)), 'bc7b6')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	position(lowerUTF8(toString(t.Id)), '8f4-53') > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	startsWith(lowerUTF8(toString(t.Id)), '8f4-53')

