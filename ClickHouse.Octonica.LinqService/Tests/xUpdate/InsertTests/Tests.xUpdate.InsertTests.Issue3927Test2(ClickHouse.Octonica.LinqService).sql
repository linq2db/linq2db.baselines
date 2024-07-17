BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue3927Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue3927Table
(
	SerialNumber FixedString(11),
	PageNumber   Int32,

	PRIMARY KEY (SerialNumber)
)
ENGINE = MergeTree()
ORDER BY SerialNumber

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue3927Table
(
	PageNumber
)
SELECT
	9
FROM
	Issue3927Table display
WHERE
	display.SerialNumber = '12345678901'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue3927Table

