-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = ?,
	"Version" = ?,
	"CreatedAt" = ?,
	"CreatedBy" = ?,
	"UpdatedAt" = ?,
	"UpdatedBy" = ?
WHERE
	"t1"."Id" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL

INSERT INTO "UpsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
VALUES
(
	?,
	?,
	?,
	CURRENT_TIMESTAMP,
	?,
	?,
	?
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
SET     @Name = 'ts-upd'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = ?,
	"Version" = ?,
	"CreatedAt" = ?,
	"CreatedBy" = ?,
	"UpdatedAt" = CURRENT_TIMESTAMP,
	"UpdatedBy" = ?
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

-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = ?,
	"Version" = ?,
	"CreatedAt" = CURRENT_TIMESTAMP,
	"CreatedBy" = ?,
	"UpdatedAt" = ?,
	"UpdatedBy" = ?
WHERE
	"t1"."Id" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL

INSERT INTO "UpsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
VALUES
(
	?,
	?,
	?,
	CURRENT_TIMESTAMP,
	?,
	?,
	?
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
	"r"."Id" = 2
LIMIT 2

