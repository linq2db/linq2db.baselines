﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @testedList VarChar(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	"t"."Id",
	"t"."Value1",
	"t"."Value2"
FROM
	"ValueConversion" "t"
WHERE
	@testedList = "t"."Value2"

