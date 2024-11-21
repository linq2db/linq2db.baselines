BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Position')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Position"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
DECLARE @group Integer -- Int32
SET     @group = 7

SELECT
	"p_1"."Id",
	FIRST_VALUE("p_1"."Id") OVER(ORDER BY "p_1"."Order_1" DESC)
FROM
	(
		SELECT
			"p"."Id",
			"p"."Order" as "Order_1"
		FROM
			"Position" "p"
		WHERE
			"p"."Group" = @group
	) "p_1"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Position')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Position"';
END

