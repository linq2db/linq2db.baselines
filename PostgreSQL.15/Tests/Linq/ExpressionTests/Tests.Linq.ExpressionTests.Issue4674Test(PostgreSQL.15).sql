BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4674StockItem"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4674StockItem"
(
	"TenantId"    text     NULL,
	"Code"        text     NULL,
	"Description" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4674StockRoomItem"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4674StockRoomItem"
(
	"TenantId"      text        NULL,
	"StockroomCode" text        NULL,
	"ItemCode"      text        NULL,
	"Quantity"      decimal NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4674StockRoomItem"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4674StockItem"

