BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "MainTable"
			(
				"Id"    Int                                    NOT NULL,
				"Field" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Field VarChar(7) -- String
SET     @Field = 'value 1'

INSERT INTO "MainTable"
(
	"Id",
	"Field"
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Field VarChar(7) -- String
SET     @Field = 'value 2'

INSERT INTO "MainTable"
(
	"Id",
	"Field"
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field VarChar(7) -- String
SET     @Field = 'value 3'

INSERT INTO "MainTable"
(
	"Id",
	"Field"
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AssociatedTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AssociatedTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AssociatedTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AssociatedTable"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "AssociatedTable"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "AssociatedTable"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	"MainTable"
SET
	"Field" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"AssociatedTable" "p"
				LEFT JOIN "MainTable" "a_MainOptional" ON "p"."Id" = "a_MainOptional"."Id"
		WHERE
			"p"."Id" = @id AND "MainTable"."Id" = "a_MainOptional"."Id" AND
			("MainTable"."Field" = "a_MainOptional"."Field" OR "MainTable"."Field" IS NULL AND "a_MainOptional"."Field" IS NULL)
	)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AssociatedTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AssociatedTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainTable"';
END

