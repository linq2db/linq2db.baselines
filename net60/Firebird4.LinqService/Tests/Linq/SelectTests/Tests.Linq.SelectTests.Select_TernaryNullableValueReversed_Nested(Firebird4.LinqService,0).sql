﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 0
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 0

SELECT
	CASE
		WHEN Cast(@value_1 as Int) IS NOT NULL
			THEN CASE
			WHEN Cast(@Value_2 as Int) < 2
				THEN Cast(@Value_2 as Int)
			ELSE Cast(@Value_2 as Int) + 4
		END
		ELSE NULL
	END
FROM rdb$database

