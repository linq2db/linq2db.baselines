-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @updateTime DateTime
SET     @updateTime = TIMESTAMP '2026-01-01 12:00:00.0000000'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = ?,
	"Version" = ?,
	"UpdatedAt" = ?,
	"UpdatedBy" = 'system'
WHERE
	"t1"."Id" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @insertTime DateTime
SET     @insertTime = TIMESTAMP '2026-01-01 10:00:00.0000000'

INSERT INTO "UpsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy"
)
VALUES
(
	?,
	?,
	?,
	?,
	'system'
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."Name",
	"r"."Version",
	"r"."CreatedAt",
	"r"."CreatedBy",
	"r"."UpdatedAt",
	"r"."UpdatedBy"
FROM
	"UpsertTest" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @updateTime DateTime
SET     @updateTime = TIMESTAMP '2026-01-01 12:00:00.0000000'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = ?,
	"Version" = ?,
	"UpdatedAt" = ?,
	"UpdatedBy" = 'system'
WHERE
	"t1"."Id" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."Name",
	"r"."Version",
	"r"."CreatedAt",
	"r"."CreatedBy",
	"r"."UpdatedAt",
	"r"."UpdatedBy"
FROM
	"UpsertTest" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

