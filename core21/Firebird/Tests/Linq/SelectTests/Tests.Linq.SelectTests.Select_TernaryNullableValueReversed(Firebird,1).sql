﻿BeforeExecute
-- Firebird
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 1
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 1

SELECT
	CASE
		WHEN Cast(@value_1 as Int) IS NOT NULL
			THEN Cast(@Value_2 as Int)
		ELSE NULL
	END
FROM rdb$database

