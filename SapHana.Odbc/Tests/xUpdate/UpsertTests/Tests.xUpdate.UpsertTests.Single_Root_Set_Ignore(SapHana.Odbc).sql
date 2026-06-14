-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @modified DateTime
SET     @modified = TIMESTAMP '2026-02-02 09:00:00.0000000'
DECLARE @UpdatedBy NVarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'

UPSERT "UpsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"UpdatedAt",
	"UpdatedBy"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."CreatedAt",
	"t1"."CreatedBy",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"UpsertTest" "t1"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @modified DateTime
SET     @modified = TIMESTAMP '2026-02-02 09:00:00.0000000'
DECLARE @UpdatedBy NVarChar(12) -- String
SET     @UpdatedBy = 'sys-root-upd'

UPSERT "UpsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"UpdatedAt",
	"UpdatedBy"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."CreatedAt",
	"t1"."CreatedBy",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"UpsertTest" "t1"
LIMIT 2

