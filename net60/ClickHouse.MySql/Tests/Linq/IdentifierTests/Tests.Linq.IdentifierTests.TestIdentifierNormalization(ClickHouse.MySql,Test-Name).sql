BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `Test-Name`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `Test-Name`
(
	`Test-Name` Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`Test-Name`
UPDATE
	`Test-Name` = toInt32(2)
WHERE
	`Test-Name` = toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `Test-Name`

