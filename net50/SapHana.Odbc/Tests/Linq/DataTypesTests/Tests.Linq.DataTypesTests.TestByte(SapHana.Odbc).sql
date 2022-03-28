BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ByteTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ByteTable"
(
	"ColumnNullable" TinyInt     NULL,
	"Column"         TinyInt NOT NULL,
	"Id"             Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1  -- Byte
SET     @Column_1 = 1
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1  -- Byte
SET     @Column_1 = 255
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Column_1  -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = ? AND "r"."ColumnNullable" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = 255 AND "r"."ColumnNullable" = 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1  -- Byte
SET     @Column_1 = 1
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1  -- Byte
SET     @Column_1 = 255
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1  -- Byte
SET     @Column_1 = 1
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1  -- Byte
SET     @Column_1 = 255
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1  -- Byte
SET     @Column_1 = 1
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1  -- Byte
SET     @Column_1 = 255
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ByteTable"

