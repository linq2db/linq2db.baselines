﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	DateAdd(Millisecond, CAST(@p AS Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

