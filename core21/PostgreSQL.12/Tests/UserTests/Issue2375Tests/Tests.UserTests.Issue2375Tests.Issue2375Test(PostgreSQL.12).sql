BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "InventoryResourceDTO"
(
	"Id"                uuid      NOT NULL,
	"Status"            Int       NOT NULL,
	"ResourceID"        uuid      NOT NULL,
	"ModifiedTimeStamp" TimeStamp     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "WmsLoadCarrierDTO"
(
	"Id"            uuid NOT NULL,
	"ResourceLabel" text     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Uuid -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ResourceLabel Text(1) -- String
SET     @ResourceLabel = 'b'

INSERT INTO "WmsLoadCarrierDTO"
(
	"Id",
	"ResourceLabel"
)
VALUES
(
	:Id,
	:ResourceLabel
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Uuid -- Guid
SET     @Id = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @Status Integer -- Int32
SET     @Status = 40
DECLARE @ResourceID Uuid -- Guid
SET     @ResourceID = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ModifiedTimeStamp Timestamp -- DateTime
SET     @ModifiedTimeStamp = '2020-02-29 15:54:55.123'::timestamp

INSERT INTO "InventoryResourceDTO"
(
	"Id",
	"Status",
	"ResourceID",
	"ModifiedTimeStamp"
)
VALUES
(
	:Id,
	:Status,
	:ResourceID,
	:ModifiedTimeStamp
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Uuid -- Guid
SET     @Id = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @Status Integer -- Int32
SET     @Status = 40
DECLARE @ResourceID Uuid -- Guid
SET     @ResourceID = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ModifiedTimeStamp Timestamp -- DateTime
SET     @ModifiedTimeStamp = '2020-02-29 15:54:55.123'::timestamp

INSERT INTO "InventoryResourceDTO"
(
	"Id",
	"Status",
	"ResourceID",
	"ModifiedTimeStamp"
)
VALUES
(
	:Id,
	:Status,
	:ResourceID,
	:ModifiedTimeStamp
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	inventory."Status",
	lc."ResourceLabel"
FROM
	"InventoryResourceDTO" inventory
		INNER JOIN "WmsLoadCarrierDTO" lc ON inventory."ResourceID" = lc."Id"
GROUP BY
	inventory."Status",
	lc."ResourceLabel"
HAVING
	Count(*) > 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Status_1 Integer -- Int32
SET     @Status_1 = 40
DECLARE @ResourceLabel Text(1) -- String
SET     @ResourceLabel = 'b'

SELECT
	inventory."Id",
	inventory."Status",
	inventory."ResourceID",
	inventory."ModifiedTimeStamp"
FROM
	"InventoryResourceDTO" inventory
		INNER JOIN "WmsLoadCarrierDTO" lc ON inventory."ResourceID" = lc."Id"
WHERE
	(inventory."Status" = :Status_1 AND lc."ResourceLabel" = :ResourceLabel)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE "WmsLoadCarrierDTO"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE "InventoryResourceDTO"

