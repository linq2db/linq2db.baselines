﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDateTime64(concat(leftPadUTF8(toString((toInt32(2010) + t.ID)), toUInt32(toInt32(4)), '0'), '-01-01'), toUInt8(7))
FROM
	LinqDataTypes t

