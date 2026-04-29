-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'x'
DECLARE @Version Int -- Int32
SET     @Version = 5
DECLARE @stamp DateTime
SET     @stamp = '2026-06-01'
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = ?,
	"Version" = ?,
	"UpdatedAt" = ?,
	"UpdatedBy" = ?
WHERE
	"t"."Id" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"EntityUpdateTest" "t1"
LIMIT 2

