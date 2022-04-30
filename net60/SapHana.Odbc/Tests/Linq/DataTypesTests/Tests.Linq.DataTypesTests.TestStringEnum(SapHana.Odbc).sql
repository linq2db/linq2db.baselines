BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "StringEnumTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "StringEnumTable"
(
	"ColumnNullable" NVarChar(8)     NULL,
	"Column"         NVarChar(8) NOT NULL,
	"Id"             Integer     NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "StringEnumTable"
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
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "StringEnumTable"
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
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = ? AND "r"."ColumnNullable" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = 'value=2' AND "r"."ColumnNullable" = 'value=33'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "StringEnumTable"
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
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "StringEnumTable"
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
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "StringEnumTable"
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
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "StringEnumTable"
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
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "StringEnumTable"
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
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "StringEnumTable"
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
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "StringEnumTable"

