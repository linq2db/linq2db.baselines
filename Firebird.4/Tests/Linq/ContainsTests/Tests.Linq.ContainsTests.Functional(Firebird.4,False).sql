-- Firebird.4 Firebird4

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, -2)
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, NULL)
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, 2)
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" NOT IN (NULL, 2)
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" NOT IN (-1, 2)
FETCH NEXT 1 ROWS ONLY

