BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringEnumTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StringEnumTable"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringEnumTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "StringEnumTable"
			(
				"ColumnNullable" VarChar(8) CHARACTER SET UNICODE_FSS,
				"Column"         VarChar(8) CHARACTER SET UNICODE_FSS NOT NULL,
				"Id"             Int                                  NOT NULL
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "StringEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT CAST(NULL AS VarChar(8) CHARACTER SET UNICODE_FSS),CAST('val=1' AS VarChar(8) CHARACTER SET UNICODE_FSS),1 FROM rdb$database UNION ALL
SELECT 'value=33','value=2',2 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird4 Firebird

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = 'value=2' AND "r"."ColumnNullable" = 'value=33'

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @ColumnNullable VarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 VarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "StringEnumTable"
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
-- Firebird4 Firebird
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "StringEnumTable"
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
-- Firebird4 Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "StringEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT CAST(NULL AS VarChar(8) CHARACTER SET UNICODE_FSS),CAST('val=1' AS VarChar(8) CHARACTER SET UNICODE_FSS),1 FROM rdb$database UNION ALL
SELECT 'value=33','value=2',2 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "StringEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT CAST(NULL AS VarChar(8) CHARACTER SET UNICODE_FSS),CAST('val=1' AS VarChar(8) CHARACTER SET UNICODE_FSS),1 FROM rdb$database UNION ALL
SELECT 'value=33','value=2',2 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringEnumTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StringEnumTable"';
END

