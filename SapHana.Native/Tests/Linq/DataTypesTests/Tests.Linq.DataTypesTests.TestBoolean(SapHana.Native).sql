-- SapHana.Native SapHana
DECLARE @Column TinyInt -- Byte
SET     @Column = 0
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 1

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = :"Column" AND "r"."ColumnNullable" = :"ColumnNullable"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = 0 AND "r"."ColumnNullable" = 1

-- SapHana.Native SapHana
DELETE FROM
	"BooleanTable" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column TinyInt -- Byte
SET     @Column = 1
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL

INSERT INTO "BooleanTable"
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
SET     @Column = 0
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 1

INSERT INTO "BooleanTable"
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
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DELETE FROM
	"BooleanTable" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column TinyInt -- Byte
SET     @Column = 1
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL

INSERT INTO "BooleanTable"
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
SET     @Column = 0
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 1

INSERT INTO "BooleanTable"
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
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DELETE FROM
	"BooleanTable" "t1"

INSERT BULK "BooleanTable"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

