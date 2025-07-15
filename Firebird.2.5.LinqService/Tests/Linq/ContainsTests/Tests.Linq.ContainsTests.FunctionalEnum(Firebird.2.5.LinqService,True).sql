BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'FOUR')

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" IN ('THREE') OR "s"."Enum" IS NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'TWO')

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" NOT IN ('TWO') AND "s"."Enum" IS NOT NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" NOT IN ('THREE', 'TWO') OR "s"."Enum" IS NULL)

