﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue2691Table
(
	Id,
	Data,
	DataB
)
VALUES
(
	99,
	'\x01\x02\x03\x04\x05',
	'\x01\x02\x03\x04\x05\x06'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Length(x.Data)
FROM
	Issue2691Table x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Length(x.Data)
FROM
	Issue2691Table x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Length(x.DataB)
FROM
	Issue2691Table x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Length(x.DataB)
FROM
	Issue2691Table x

