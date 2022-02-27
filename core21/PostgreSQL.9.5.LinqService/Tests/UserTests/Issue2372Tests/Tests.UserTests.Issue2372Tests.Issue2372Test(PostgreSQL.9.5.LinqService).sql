BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InventoryResource"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "InventoryResource"
(
	"Id"     uuid    NOT NULL,
	"Status" VarChar NOT NULL,

	CONSTRAINT "PK_InventoryResource" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Uuid -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Status Text(4) -- String
SET     @Status = 'Used'

INSERT INTO "InventoryResource"
(
	"Id",
	"Status"
)
VALUES
(
	:Id,
	:Status
)

