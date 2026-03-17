-- Firebird.2.5 Firebird
DECLARE @Column Char -- String
SET     @Column = '0'
DECLARE @ColumnNullable Char -- String
SET     @ColumnNullable = '1'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = '0' AND "r"."ColumnNullable" = '1'

-- Firebird.2.5 Firebird

DELETE FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Char -- String
SET     @Column = '1'
DECLARE @ColumnNullable Char -- String
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
	@Column,
	@ColumnNullable
)

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Char -- String
SET     @Column = '0'
DECLARE @ColumnNullable Char -- String
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
	@Column,
	@ColumnNullable
)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.2.5 Firebird

DELETE FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,'1',NULL FROM rdb$database UNION ALL
SELECT 2,'0','1' FROM rdb$database

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.2.5 Firebird

DELETE FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,'1',NULL FROM rdb$database UNION ALL
SELECT 2,'0','1' FROM rdb$database

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

