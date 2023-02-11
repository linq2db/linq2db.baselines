BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BooleanTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BooleanTable"
			(
				"Id"             Int  NOT NULL,
				"Column"         CHAR NOT NULL,
				"ColumnNullable" CHAR
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,0,1 FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @Column_1 Char(1) -- String
SET     @Column_1 = '0'
DECLARE @ColumnNullable Char(1) -- String
SET     @ColumnNullable = '1'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = 0 AND "r"."ColumnNullable" = 1

BeforeExecute
-- Firebird

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Char(1) -- String
SET     @Column_1 = '1'
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = NULL

INSERT INTO "BooleanTable"
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
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Char(1) -- String
SET     @Column_1 = '0'
DECLARE @ColumnNullable Char(1) -- String
SET     @ColumnNullable = '1'

INSERT INTO "BooleanTable"
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
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,0,1 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,0,1 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BooleanTable"';
END

