BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IntEnumTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "IntEnumTable"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IntEnumTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "IntEnumTable"
			(
				"ColumnNullable" Int,
				"Column"         Int NOT NULL,
				"Id"             Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "IntEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,1,1 FROM rdb$database UNION ALL
SELECT 3,2,2 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"IntEnumTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird3 Firebird

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"IntEnumTable" "r"
WHERE
	"r"."Column" = 2 AND "r"."ColumnNullable" = 3

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"IntEnumTable" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "IntEnumTable"
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
-- Firebird3 Firebird
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "IntEnumTable"
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
-- Firebird3 Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"IntEnumTable" "t1"

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "IntEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,1,1 FROM rdb$database UNION ALL
SELECT 3,2,2 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"IntEnumTable" "t1"

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "IntEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,1,1 FROM rdb$database UNION ALL
SELECT 3,2,2 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IntEnumTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "IntEnumTable"';
END

