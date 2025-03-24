﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	t2.Converted1,
	t2.Converted2,
	t2.Converted1
FROM
	(
		SELECT
			Nvl(t1.EnumNullable, t1.Enum) as Converted1,
			t1.Value1 as Converted2
		FROM
			ValueConversion t1
	) t2
UNION
SELECT
	Nvl(t1_1.EnumNullable, t1_1.Enum),
	t1_1.Value1,
	Nvl(t1_1.EnumNullable, t1_1.Enum)
FROM
	ValueConversion t1_1

