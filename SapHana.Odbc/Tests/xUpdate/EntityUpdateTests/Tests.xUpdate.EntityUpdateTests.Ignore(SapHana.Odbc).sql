-- SapHana.Odbc SapHanaOdbc
DECLARE @Version Int -- Int32
SET     @Version = 99
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" "t"
SET
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

