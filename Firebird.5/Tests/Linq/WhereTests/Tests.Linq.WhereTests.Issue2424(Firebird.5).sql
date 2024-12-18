BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Isue2424Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Isue2424Table"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Isue2424Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Isue2424Table"
			(
				"Id"       Int                                    NOT NULL,
				"StrValue" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "Isue2424Table"
(
	"Id",
	"StrValue"
)
SELECT 1,CAST('1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 3,'3' FROM rdb$database UNION ALL
SELECT 5,'5' FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" = '3' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" = '3' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '5' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '5' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '1' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '1' AND "i"."StrValue" IS NOT NULL
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Isue2424Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Isue2424Table"';
END

