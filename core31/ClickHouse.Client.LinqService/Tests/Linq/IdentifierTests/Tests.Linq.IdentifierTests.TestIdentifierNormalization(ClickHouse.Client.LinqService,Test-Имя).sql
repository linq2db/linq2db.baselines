BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS `Test-Имя`

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS `Test-Имя`
(
	`Test-Имя` Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`Test-Имя`
UPDATE
	`Test-Имя` = toInt32(2)
WHERE
	`Test-Имя` = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS `Test-Имя`

