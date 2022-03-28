BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BooleanTable"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BooleanTable"
			(
				"ColumnNullable" CHAR,
				"Column"         CHAR NOT NULL,
				"Id"             Int  NOT NULL
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "BooleanTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,1,1 FROM rdb$database UNION ALL
SELECT 1,0,2 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @Column_1 Char(1) -- String
SET     @Column_1 = '0'
DECLARE @ColumnNullable Char(1) -- String
SET     @ColumnNullable = '1'

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird3 Firebird

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = 0 AND "r"."ColumnNullable" = 1

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = NULL
DECLARE @Column_1 Char(1) -- String
SET     @Column_1 = '1'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "BooleanTable"
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
DECLARE @ColumnNullable Char(1) -- String
SET     @ColumnNullable = '1'
DECLARE @Column_1 Char(1) -- String
SET     @Column_1 = '0'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "BooleanTable"
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
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "BooleanTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,1,1 FROM rdb$database UNION ALL
SELECT 1,0,2 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "BooleanTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,1,1 FROM rdb$database UNION ALL
SELECT 1,0,2 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BooleanTable"';
END

