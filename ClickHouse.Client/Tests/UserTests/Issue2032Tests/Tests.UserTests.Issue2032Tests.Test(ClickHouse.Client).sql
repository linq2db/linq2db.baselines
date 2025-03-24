﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Decimal1,
	CASE
		WHEN r.Decimal2 IS NOT NULL THEN r.Decimal2
		ELSE toDecimal128('0', 4)
	END,
	r.Decimal3,
	CASE
		WHEN r.Int1 IS NOT NULL THEN r.Int1
		ELSE 0
	END,
	r.Int2
FROM
	Issue2032Table r
ORDER BY
	r.Id

