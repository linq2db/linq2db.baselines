BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InfeedAdvicePositionDTO
(
	Id
)
VALUES
(
	toUUID('193ae7f4-5309-4eee-a746-27b28c7e30f3')
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	lower(toString(infeed.Id))
FROM
	InfeedAdvicePositionDTO infeed
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	position(lower(toString(infeed.Id)), '7f4-53') > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	startsWith(lower(toString(infeed.Id)), '193ae')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	position(lower(toString(infeed.Id)), '8f4-53') > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	startsWith(lowerUTF8(lower(toString(infeed.Id))), '293ae')

