-- SapHana.Odbc SapHanaOdbc
DECLARE @Column TinyInt(1) -- Byte
SET     @Column = 255
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = ? AND "r"."ColumnNullable" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = 255 AND "r"."ColumnNullable" = 2

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"ByteTable" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column TinyInt(1) -- Byte
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
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column TinyInt(1) -- Byte
SET     @Column = 255
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"ByteTable" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column TinyInt(1) -- Byte
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
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column TinyInt(1) -- Byte
SET     @Column = 255
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"ByteTable" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column TinyInt(1) -- Byte
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
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column TinyInt(1) -- Byte
SET     @Column = 255
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

