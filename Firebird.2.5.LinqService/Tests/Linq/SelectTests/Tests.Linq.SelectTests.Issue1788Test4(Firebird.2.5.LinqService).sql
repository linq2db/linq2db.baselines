﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"Table1788" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"l"."Value1"
FROM
	"Table1788" "p"
		LEFT JOIN "Table1788" "l" ON "l"."Id" = "p"."Id" + 1

