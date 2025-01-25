BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3830TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3830TestTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	1,
	'Y',
	NULL,
	NULL
)

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	2,
	'N',
	NULL,
	'Y'
)

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	3,
	'N',
	'Y',
	NULL
)

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	4,
	'Y',
	'N',
	'Y'
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = 'Y' AND "r"."Bool2" IS NULL AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = 'Y' AND "r"."Bool2" IS NULL AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	("r"."Bool3" IS NULL OR "r"."Bool3" IS NULL) AND "r"."Bool1" = 'Y' AND
	"r"."Bool2" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NULL AND "r"."Bool1" = 'Y' AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = 'N' AND "r"."Bool2" IS NULL AND "r"."Bool3" = 'Y'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool3" = 'Y' AND "r"."Bool1" = 'N' AND "r"."Bool2" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = 'N' AND "r"."Bool2" IS NULL AND "r"."Bool3" = 'Y'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NULL AND "r"."Bool1" = 'N' AND "r"."Bool3" = 'Y'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = 'N' AND "r"."Bool2" = 'Y' AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = 'N' AND "r"."Bool2" = 'Y' AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	("r"."Bool3" IS NULL OR "r"."Bool3" IS NULL) AND "r"."Bool1" = 'N' AND
	"r"."Bool2" = 'Y'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NOT NULL AND "r"."Bool1" = 'N' AND "r"."Bool3" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = 'Y' AND "r"."Bool2" = 'N' AND "r"."Bool3" = 'Y'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = 'Y' AND "r"."Bool2" = 'N' AND "r"."Bool3" = 'Y'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool3" = 'Y' AND "r"."Bool1" = 'Y' AND "r"."Bool2" = 'N'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NOT NULL AND "r"."Bool1" = 'Y' AND "r"."Bool3" = 'Y'

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3830TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3830TestTable"';
END

