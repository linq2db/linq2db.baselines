﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Integer -- Int32
SET     @value = NULL

SELECT
	@value::Int
FROM table(set{1})

