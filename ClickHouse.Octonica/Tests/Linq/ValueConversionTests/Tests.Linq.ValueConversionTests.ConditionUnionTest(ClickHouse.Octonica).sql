﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN t1.EnumNullable IS NOT NULL THEN t1.EnumNullable
		ELSE t1.Enum
	END as Converted
FROM
	ValueConversion t1
UNION ALL
SELECT
	CASE
		WHEN t1_1.EnumNullable IS NOT NULL THEN t1_1.EnumNullable
		ELSE t1_1.Enum
	END as Converted
FROM
	ValueConversion t1_1

