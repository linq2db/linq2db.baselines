BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Dog')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Dog"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Dog')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Dog"
			(
				"Id"      Int NOT NULL,
				"OwnerId" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @OwnerId Integer -- Int32
SET     @OwnerId = 1

INSERT INTO "Dog"
(
	"Id",
	"OwnerId"
)
VALUES
(
	@Id,
	@OwnerId
)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Human')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Human"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Human')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Human"
			(
				"Id"      Int NOT NULL,
				"HouseId" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @HouseId Integer -- Int32
SET     @HouseId = 1

INSERT INTO "Human"
(
	"Id",
	"HouseId"
)
VALUES
(
	@Id,
	@HouseId
)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'House')) THEN
		EXECUTE STATEMENT 'DROP TABLE "House"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'House')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "House"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "House"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Window')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Window"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Window')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Window"
			(
				"Id"       Int NOT NULL,
				"Position" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Position Integer -- Int32
SET     @Position = 6

INSERT INTO "Window"
(
	"Id",
	"Position"
)
VALUES
(
	@Id,
	@Position
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Dog" "x"
		INNER JOIN "Human" "a_Owner" ON "x"."OwnerId" = "a_Owner"."Id"
		INNER JOIN "House" "a_House" ON "a_Owner"."HouseId" = "a_House"."Id"
		LEFT JOIN (
			SELECT
				"a_WindowAtPosition"."Id"
			FROM
				"Window" "a_WindowAtPosition"
			WHERE
				"a_WindowAtPosition"."Position" = 6
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Window')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Window"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'House')) THEN
		EXECUTE STATEMENT 'DROP TABLE "House"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Human')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Human"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Dog')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Dog"';
END

