BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringEnumTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StringEnumTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringEnumTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "StringEnumTable"
			(
				"Id"             Int                                  NOT NULL,
				"Column"         VarChar(8) CHARACTER SET UNICODE_FSS NOT NULL,
				"ColumnNullable" VarChar(8) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "StringEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,CAST('val=1' AS VarChar(8) CHARACTER SET UNICODE_FSS),CAST(NULL AS VarChar(8) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'value=2','value=33' FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = 'value=2' AND "r"."ColumnNullable" = 'value=33'

BeforeExecute
-- Firebird

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 VarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @ColumnNullable VarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO "StringEnumTable"
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
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO "StringEnumTable"
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
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "StringEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,CAST('val=1' AS VarChar(8) CHARACTER SET UNICODE_FSS),CAST(NULL AS VarChar(8) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'value=2','value=33' FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "StringEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,CAST('val=1' AS VarChar(8) CHARACTER SET UNICODE_FSS),CAST(NULL AS VarChar(8) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'value=2','value=33' FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringEnumTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StringEnumTable"';
END

