BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, -2)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Int" IN (-1) OR "s"."Int" IS NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, 2)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Int" NOT IN (2) AND "s"."Int" IS NOT NULL)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Int" NOT IN (-1, 2) OR "s"."Int" IS NULL)

