-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (NULL, NULL)

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" NOT IN (NULL, NULL)

