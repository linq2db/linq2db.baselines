BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3830TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3830TestTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3830TestTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3830TestTable"
			(
				"Id"    Int     NOT NULL,
				"Bool1" Char(1) NOT NULL,
				"Bool2" Char(1),
				"Bool3" Char(1)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
SELECT 1,'Y',NULL,NULL FROM rdb$database UNION ALL
SELECT 2,'N',NULL,'Y' FROM rdb$database UNION ALL
SELECT 3,'N','Y',NULL FROM rdb$database UNION ALL
SELECT 4,'Y','N','Y' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND "r"."Bool2" IS NULL AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND "r"."Bool2" IS NULL AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	("r"."Bool3" IS NULL OR "r"."Bool3" IS NULL) AND "r"."Bool1" = @Bool1 AND
	"r"."Bool2" IS NULL

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NULL AND "r"."Bool1" = @Bool1 AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND "r"."Bool2" IS NULL AND "r"."Bool3" = @Bool3

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool3" = @Bool3 AND "r"."Bool1" = @Bool1 AND "r"."Bool2" IS NULL

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND "r"."Bool2" IS NULL AND "r"."Bool3" = @Bool3

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NULL AND "r"."Bool1" = @Bool1 AND "r"."Bool3" = @Bool3

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND "r"."Bool2" = @Bool2 AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND "r"."Bool2" = @Bool2 AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	("r"."Bool3" IS NULL OR "r"."Bool3" IS NULL) AND "r"."Bool1" = @Bool1 AND
	"r"."Bool2" = @Bool2

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NOT NULL AND "r"."Bool1" = @Bool1 AND
	"r"."Bool3" IS NULL

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND "r"."Bool2" = @Bool2 AND "r"."Bool3" = @Bool3

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND "r"."Bool2" = @Bool2 AND "r"."Bool3" = @Bool3

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'N'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool3" = @Bool3 AND "r"."Bool1" = @Bool1 AND "r"."Bool2" = @Bool2

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NOT NULL AND "r"."Bool1" = @Bool1 AND
	"r"."Bool3" = @Bool3

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3830TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3830TestTable"';
END

