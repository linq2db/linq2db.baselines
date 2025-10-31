-- Firebird.3 Firebird3
DECLARE @Column Integer -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"IntEnumTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"IntEnumTable" "r"
WHERE
	"r"."Column" = 2 AND "r"."ColumnNullable" = 3

-- Firebird.3 Firebird3

DELETE FROM
	"IntEnumTable" "t1"

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Integer -- Int32
SET     @Column = 1
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL

INSERT INTO "IntEnumTable"
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

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Integer -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

INSERT INTO "IntEnumTable"
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

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.3 Firebird3

DELETE FROM
	"IntEnumTable" "t1"

-- Firebird.3 Firebird3

INSERT INTO "IntEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,2,3 FROM rdb$database

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.3 Firebird3

DELETE FROM
	"IntEnumTable" "t1"

-- Firebird.3 Firebird3

INSERT INTO "IntEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,2,3 FROM rdb$database

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

