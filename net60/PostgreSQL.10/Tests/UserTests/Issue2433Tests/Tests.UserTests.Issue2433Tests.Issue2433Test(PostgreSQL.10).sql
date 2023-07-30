BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InventoryResourceDTO"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "InventoryResourceDTO"
(
	"Id"                uuid      NOT NULL,
	"Status"            Int       NOT NULL,
	"ResourceID"        uuid      NOT NULL,
	"ModifiedTimeStamp" TimeStamp     NULL
)

BeforeExecute
INSERT BULK "InventoryResourceDTO"(Id, Status, ResourceID, ModifiedTimeStamp)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InventoryResourceDTO"

