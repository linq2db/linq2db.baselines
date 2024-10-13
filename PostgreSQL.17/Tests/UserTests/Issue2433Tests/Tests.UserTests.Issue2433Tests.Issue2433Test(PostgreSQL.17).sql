BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InventoryResourceDTO"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InventoryResourceDTO"

