﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @value Integer -- Int32
SET     @value = 0
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	@value,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 4
	END

