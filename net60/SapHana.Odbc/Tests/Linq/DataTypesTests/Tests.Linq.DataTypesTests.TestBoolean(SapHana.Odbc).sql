BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BooleanTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "BooleanTable"
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

INSERT INTO "BooleanTable"
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
SET     @ColumnNullable = 1
DECLARE @Column_1  -- Byte
SET     @Column_1 = 0
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "BooleanTable"
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
SET     @Column_1 = 0
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 1

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = ? AND "r"."ColumnNullable" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = 0 AND "r"."ColumnNullable" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1  -- Byte
SET     @Column_1 = 1
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "BooleanTable"
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
SET     @ColumnNullable = 1
DECLARE @Column_1  -- Byte
SET     @Column_1 = 0
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "BooleanTable"
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
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1  -- Byte
SET     @Column_1 = 1
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "BooleanTable"
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
SET     @ColumnNullable = 1
DECLARE @Column_1  -- Byte
SET     @Column_1 = 0
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "BooleanTable"
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
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1  -- Byte
SET     @Column_1 = 1
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "BooleanTable"
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
SET     @ColumnNullable = 1
DECLARE @Column_1  -- Byte
SET     @Column_1 = 0
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "BooleanTable"
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
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BooleanTable"

