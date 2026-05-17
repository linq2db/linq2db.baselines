-- SapHana.Odbc SapHanaOdbc
DECLARE @Column Date
SET     @Column = TIMESTAMP '2020-02-29 00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2020-01-01 00:00:00.0000000'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = ? AND "r"."ColumnNullable" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = '2020-02-29' AND "r"."ColumnNullable" = '2020-01-01'

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"DateOnlyTable" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = TIMESTAMP '1980-01-01 00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO "DateOnlyTable"
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
DECLARE @Column Date
SET     @Column = TIMESTAMP '2020-02-29 00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2020-01-01 00:00:00.0000000'

INSERT INTO "DateOnlyTable"
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
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"DateOnlyTable" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = TIMESTAMP '1980-01-01 00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO "DateOnlyTable"
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
DECLARE @Column Date
SET     @Column = TIMESTAMP '2020-02-29 00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2020-01-01 00:00:00.0000000'

INSERT INTO "DateOnlyTable"
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
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"DateOnlyTable" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = TIMESTAMP '1980-01-01 00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO "DateOnlyTable"
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
DECLARE @Column Date
SET     @Column = TIMESTAMP '2020-02-29 00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2020-01-01 00:00:00.0000000'

INSERT INTO "DateOnlyTable"
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
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

