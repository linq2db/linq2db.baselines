﻿BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	"testparams" "t"
SET
	"from" = CAST(@from AS Int)
WHERE
	"t"."from" = 1

