﻿BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	SYSUUID
FROM
	"LinqDataTypes" "p"
LIMIT :"take"

