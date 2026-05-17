-- Firebird.3 Firebird3
DECLARE @Column SmallInt -- Int16
SET     @Column = 255
DECLARE @ColumnNullable SmallInt -- Int16
SET     @ColumnNullable = 2

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = 255 AND "r"."ColumnNullable" = 2

-- Firebird.3 Firebird3

DELETE FROM
	"ByteTable" "t1"

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallInt -- Int16
SET     @Column = 1
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
	@Column,
	@ColumnNullable
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column SmallInt -- Int16
SET     @Column = 255
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
	@Column,
	@ColumnNullable
)

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.3 Firebird3

DELETE FROM
	"ByteTable" "t1"

-- Firebird.3 Firebird3

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,255,2 FROM rdb$database

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.3 Firebird3

DELETE FROM
	"ByteTable" "t1"

-- Firebird.3 Firebird3

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,255,2 FROM rdb$database

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

