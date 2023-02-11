BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "GuidTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "GuidTable"
(
	"Id"             Integer   NOT NULL,
	"Column"         Char (36) NOT NULL,
	"ColumnNullable" Char (36)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = NULL

INSERT INTO "GuidTable"
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
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO "GuidTable"
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
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = ? AND "r"."ColumnNullable" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = 'a948600d-de21-4f74-8ac2-9516b287076e' AND
	"r"."ColumnNullable" = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = NULL

INSERT INTO "GuidTable"
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
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO "GuidTable"
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
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = NULL

INSERT INTO "GuidTable"
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
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO "GuidTable"
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
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = NULL

INSERT INTO "GuidTable"
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
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO "GuidTable"
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
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "GuidTable"

