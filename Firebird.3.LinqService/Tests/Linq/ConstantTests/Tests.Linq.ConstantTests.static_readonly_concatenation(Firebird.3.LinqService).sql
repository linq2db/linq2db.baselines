﻿BeforeExecute
--  Firebird.3 Firebird3
DECLARE @p VarChar(9) -- String
SET     @p = 'StrValue1'

SELECT
	"e"."Id",
	"e"."GuidValue",
	"e"."GuidNullableValue",
	"e"."StringValue"
FROM
	"TestConstantsData" "e"
WHERE
	"e"."StringValue" || '1' = @p

BeforeExecute
--  Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."GuidValue",
	"t1"."GuidNullableValue",
	"t1"."StringValue"
FROM
	"TestConstantsData" "t1"

