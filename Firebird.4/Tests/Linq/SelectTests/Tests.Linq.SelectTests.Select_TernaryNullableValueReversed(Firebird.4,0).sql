﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @value Integer -- Int32
SET     @value = 0
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 0

SELECT
	CASE
		WHEN Cast(@value as Int) IS NOT NULL
			THEN Cast(@Value_1 as Int)
		ELSE NULL
	END
FROM rdb$database

