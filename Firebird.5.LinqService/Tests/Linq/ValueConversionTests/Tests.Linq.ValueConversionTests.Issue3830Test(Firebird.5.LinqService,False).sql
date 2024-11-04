BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3830TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3830TestTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char -- String
SET     @Bool2 = NULL
DECLARE @Bool3 Char -- String
SET     @Bool3 = NULL

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	@Id,
	@Bool1,
	@Bool2,
	@Bool3
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool2 Char -- String
SET     @Bool2 = NULL
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	@Id,
	@Bool1,
	@Bool2,
	@Bool3
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'Y'
DECLARE @Bool3 Char -- String
SET     @Bool3 = NULL

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	@Id,
	@Bool1,
	@Bool2,
	@Bool3
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	@Id,
	@Bool1,
	@Bool2,
	@Bool3
)

BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
DECLARE @true_value Char(1) -- String
SET     @true_value = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @true_value AND "r"."Bool2" IS NULL AND
	"r"."Bool3" IS NULL

BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
DECLARE @true_value Char(1) -- String
SET     @true_value = 'Y'
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
	"r"."Bool3" = @true_value AND "r"."Bool1" = @Bool1 AND
	"r"."Bool2" IS NULL

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @false_value Char(1) -- String
SET     @false_value = 'N'
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
	"r"."Bool1" = @false_value AND "r"."Bool2" IS NULL AND
	"r"."Bool3" = @Bool3

BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
DECLARE @false_value Char(1) -- String
SET     @false_value = 'N'
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
	"r"."Bool1" = @false_value AND "r"."Bool2" = @Bool2 AND
	"r"."Bool3" IS NULL

BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
DECLARE @true_value Char(1) -- String
SET     @true_value = 'Y'
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
	"r"."Bool1" = @true_value AND "r"."Bool2" = @Bool2 AND
	"r"."Bool3" = @Bool3

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @true_value Char(1) -- String
SET     @true_value = 'Y'
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
	"r"."Bool3" = @true_value AND "r"."Bool1" = @Bool1 AND
	"r"."Bool2" = @Bool2

BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3830TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3830TestTable"';
END

