-- SapHana.Native SapHana
DECLARE @Column TinyInt -- Byte
SET     @Column = 255
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 2

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = :"Column" AND "r"."ColumnNullable" = :"ColumnNullable"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = 255 AND "r"."ColumnNullable" = 2

-- SapHana.Native SapHana
DELETE FROM
	"ByteTable" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column TinyInt -- Byte
SET     @Column = 1
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:"Id",
	:"Column",
	:"ColumnNullable"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column TinyInt -- Byte
SET     @Column = 255
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 2

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:"Id",
	:"Column",
	:"ColumnNullable"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DELETE FROM
	"ByteTable" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column TinyInt -- Byte
SET     @Column = 1
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:"Id",
	:"Column",
	:"ColumnNullable"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column TinyInt -- Byte
SET     @Column = 255
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 2

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:"Id",
	:"Column",
	:"ColumnNullable"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DELETE FROM
	"ByteTable" "t1"

INSERT BULK "ByteTable"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

