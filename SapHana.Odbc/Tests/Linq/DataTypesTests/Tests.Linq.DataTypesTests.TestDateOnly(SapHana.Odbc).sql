﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Column  -- Date
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable  -- Date
SET     @ColumnNullable = '2200-01-01'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = ? AND "r"."ColumnNullable" = ?

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = '2020-02-29' AND "r"."ColumnNullable" = '2200-01-01'

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Date
SET     @Column = '1950-01-01'
DECLARE @ColumnNullable  -- Date
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

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Date
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable  -- Date
SET     @ColumnNullable = '2200-01-01'

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

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Date
SET     @Column = '1950-01-01'
DECLARE @ColumnNullable  -- Date
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

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Date
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable  -- Date
SET     @ColumnNullable = '2200-01-01'

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

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Date
SET     @Column = '1950-01-01'
DECLARE @ColumnNullable  -- Date
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

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Date
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable  -- Date
SET     @ColumnNullable = '2200-01-01'

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

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

