﻿BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS DISTINCT FROM @value

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS DISTINCT FROM @value

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS NOT DISTINCT FROM @value

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS NOT DISTINCT FROM @value

