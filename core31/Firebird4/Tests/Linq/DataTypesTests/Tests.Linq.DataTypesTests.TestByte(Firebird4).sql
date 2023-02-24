BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ByteTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ByteTable"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ByteTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ByteTable"
			(
				"Id"             Int      NOT NULL,
				"Column"         SmallInt NOT NULL,
				"ColumnNullable" SmallInt
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,255,2 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird
DECLARE @Column_1 SmallInt -- Int16
SET     @Column_1 = 255
DECLARE @ColumnNullable SmallInt -- Int16
SET     @ColumnNullable = 2

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird4 Firebird

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = 255 AND "r"."ColumnNullable" = 2

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 SmallInt -- Int16
SET     @Column_1 = 1
DECLARE @ColumnNullable SmallInt -- Int16
SET     @ColumnNullable = NULL

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 SmallInt -- Int16
SET     @Column_1 = 255
DECLARE @ColumnNullable SmallInt -- Int16
SET     @ColumnNullable = 2

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,255,2 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,255,2 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ByteTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ByteTable"';
END

