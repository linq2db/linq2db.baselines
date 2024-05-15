BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2816Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2816Table"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2816Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue2816Table"
			(
				"Id"   Int                                    NOT NULL,
				"Text" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue2816Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Text VarChar -- String
SET     @Text = ''

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text VarChar(1) -- String
SET     @Text = 'a'

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Text VarChar(3) -- String
SET     @Text = ' m '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Text VarChar(1) -- String
SET     @Text = ' '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Text VarChar(2) -- String
SET     @Text = '  '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Text VarChar -- String
SET     @Text = NULL

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."Id",
	"p"."Text"
FROM
	"Issue2816Table" "p"
WHERE
	("p"."Text" IS NULL OR NOT "p"."Text" SIMILAR TO _utf8 x'255B5E090A0B0C0D20C285C2A0E19A80E28080E28081E28082E28083E28084E28085E28086E28087E28088E28089E2808AE280A8E280A9E2819FE380805D25')

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Text"
FROM
	"Issue2816Table" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2816Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2816Table"';
END

