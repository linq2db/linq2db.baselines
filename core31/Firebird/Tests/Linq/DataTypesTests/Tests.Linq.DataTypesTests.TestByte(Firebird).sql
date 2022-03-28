BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ByteTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ByteTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ByteTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ByteTable"
			(
				"ColumnNullable" SmallInt,
				"Column"         SmallInt NOT NULL,
				"Id"             Int      NOT NULL
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,1,1 FROM rdb$database UNION ALL
SELECT 2,255,2 FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @Column_1 SmallInt -- Int16
SET     @Column_1 = 255
DECLARE @ColumnNullable SmallInt -- Int16
SET     @ColumnNullable = 2

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = 255 AND "r"."ColumnNullable" = 2

BeforeExecute
-- Firebird

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- Firebird
DECLARE @ColumnNullable SmallInt -- Int16
SET     @ColumnNullable = NULL
DECLARE @Column_1 SmallInt -- Int16
SET     @Column_1 = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Firebird
DECLARE @ColumnNullable SmallInt -- Int16
SET     @ColumnNullable = 2
DECLARE @Column_1 SmallInt -- Int16
SET     @Column_1 = 255
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,1,1 FROM rdb$database UNION ALL
SELECT 2,255,2 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,1,1 FROM rdb$database UNION ALL
SELECT 2,255,2 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ByteTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ByteTable"';
END

