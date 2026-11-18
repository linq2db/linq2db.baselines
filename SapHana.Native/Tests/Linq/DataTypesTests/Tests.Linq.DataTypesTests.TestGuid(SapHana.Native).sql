-- SapHana.Native SapHana
DECLARE @Column VarChar(36) -- AnsiStringFixedLength
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable VarChar(36) -- AnsiStringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = :"Column" AND "r"."ColumnNullable" = :"ColumnNullable"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = 'a948600d-de21-4f74-8ac2-9516b287076e' AND
	"r"."ColumnNullable" = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

-- SapHana.Native SapHana
DELETE FROM
	"GuidTable" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column VarChar(36) -- AnsiStringFixedLength
SET     @Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable VarChar(36) -- AnsiStringFixedLength
SET     @ColumnNullable = NULL

INSERT INTO "GuidTable"
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
DECLARE @Column VarChar(36) -- AnsiStringFixedLength
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable VarChar(36) -- AnsiStringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO "GuidTable"
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
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DELETE FROM
	"GuidTable" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column VarChar(36) -- AnsiStringFixedLength
SET     @Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable VarChar(36) -- AnsiStringFixedLength
SET     @ColumnNullable = NULL

INSERT INTO "GuidTable"
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
DECLARE @Column VarChar(36) -- AnsiStringFixedLength
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable VarChar(36) -- AnsiStringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO "GuidTable"
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
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DELETE FROM
	"GuidTable" "t1"

INSERT BULK "GuidTable"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

