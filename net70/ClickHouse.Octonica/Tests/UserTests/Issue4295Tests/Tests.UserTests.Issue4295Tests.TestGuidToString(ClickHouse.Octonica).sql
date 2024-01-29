BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InfeedAdvicePositionDTO

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS InfeedAdvicePositionDTO
(
	Id UUID
)
ENGINE = Memory()

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
	upper(toString(infeed.Id))
FROM
	InfeedAdvicePositionDTO infeed
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	position(upper(toString(infeed.Id)), '7F4-53') > toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	startsWith(upper(toString(infeed.Id)), '193AE')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	position(upper(toString(infeed.Id)), '8F4-53') > toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	(startsWith(lowerUTF8(upper(toString(infeed.Id))), '293AE'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InfeedAdvicePositionDTO

