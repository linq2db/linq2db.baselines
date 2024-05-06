BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Position')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Position"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Position')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Position"
			(
				"Group" Int NOT NULL,
				"Order" Int NOT NULL,
				"Id"    Int
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Group Integer -- Int32
SET     @Group = 7
DECLARE @Order Integer -- Int32
SET     @Order = 10
DECLARE @Id Integer -- Int32
SET     @Id = 5

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Group Integer -- Int32
SET     @Group = 7
DECLARE @Order Integer -- Int32
SET     @Order = 20
DECLARE @Id Integer -- Int32
SET     @Id = 6

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Group Integer -- Int32
SET     @Group = 7
DECLARE @Order Integer -- Int32
SET     @Order = 30
DECLARE @Id Integer -- Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Group Integer -- Int32
SET     @Group = 7
DECLARE @Order Integer -- Int32
SET     @Order = 40
DECLARE @Id Integer -- Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @group Integer -- Int32
SET     @group = 7

SELECT
	"p"."Id",
	LEAD("p"."Id", 1, -1) OVER(ORDER BY "p"."Order")
FROM
	"Position" "p"
WHERE
	"p"."Group" = @group

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Position')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Position"';
END

