BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Car')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Car"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Car')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Car"
			(
				"Id"   Int                                   NOT NULL,
				"Name" VarChar(50) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Car" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'Special'

INSERT INTO "Car"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'NoSpecial'

INSERT INTO "Car"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	"x"."Name" <> 'Special' OR "x"."Name" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	"x"."Name" = 'Special'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	"x"."Name" <> 'Special' OR "x"."Name" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	"x"."Name" = 'Special'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Car')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Car"';
END

