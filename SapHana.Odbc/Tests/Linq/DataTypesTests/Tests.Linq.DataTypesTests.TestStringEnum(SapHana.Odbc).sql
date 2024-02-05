﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "StringEnumTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "StringEnumTable"
(
	"Id"             Integer     NOT NULL,
	"Column"         NVarChar(8) NOT NULL,
	"ColumnNullable" NVarChar(8)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO "StringEnumTable"
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
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO "StringEnumTable"
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
-- SapHana.Odbc SapHanaOdbc
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = ? AND "r"."ColumnNullable" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO "StringEnumTable"
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
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO "StringEnumTable"
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
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO "StringEnumTable"
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
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO "StringEnumTable"
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
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO "StringEnumTable"
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
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO "StringEnumTable"
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
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "StringEnumTable"

