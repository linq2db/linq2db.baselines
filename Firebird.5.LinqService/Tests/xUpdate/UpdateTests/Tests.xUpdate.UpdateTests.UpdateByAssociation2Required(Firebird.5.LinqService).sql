BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AssociatedTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AssociatedTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
				INNER JOIN "MainTable" "a_MainRequired" ON "p"."Id" = "a_MainRequired"."Id"
		WHERE
			"p"."Id" = @id AND "MainTable"."Id" = "a_MainRequired"."Id" AND
			("MainTable"."Field" = "a_MainRequired"."Field" AND "MainTable"."Field" IS NOT NULL AND "a_MainRequired"."Field" IS NOT NULL OR "MainTable"."Field" IS NULL AND "a_MainRequired"."Field" IS NULL)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AssociatedTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AssociatedTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainTable"';
END

