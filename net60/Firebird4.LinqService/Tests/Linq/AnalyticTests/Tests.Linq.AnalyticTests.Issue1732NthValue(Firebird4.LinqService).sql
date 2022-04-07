BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Position')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Position"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird
DECLARE @Group_1 Integer -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer -- Int32
SET     @Order_1 = 10
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Group_1 Integer -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer -- Int32
SET     @Order_1 = 20
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Group_1 Integer -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer -- Int32
SET     @Order_1 = 30
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Group_1 Integer -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Integer -- Int32
SET     @Order_1 = 40
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @group_1 Integer -- Int32
SET     @group_1 = 7

SELECT
	"p"."Id",
	NTH_VALUE("p"."Id", 2) FROM FIRST OVER(ORDER BY "p"."Order" DESC)
FROM
	"Position" "p"
WHERE
	"p"."Group" = @group_1

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Position')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Position"';
END

