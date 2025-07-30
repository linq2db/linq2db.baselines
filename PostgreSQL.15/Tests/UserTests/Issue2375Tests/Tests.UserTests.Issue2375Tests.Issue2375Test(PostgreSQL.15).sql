BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Uuid -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Uuid -- Guid
SET     @Id = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid
DECLARE @Status Integer -- Int32
SET     @Status = 40
DECLARE @ResourceID Uuid -- Guid
SET     @ResourceID = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @ModifiedTimeStamp Timestamp -- DateTime2
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Uuid -- Guid
SET     @Id = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid
DECLARE @Status Integer -- Int32
SET     @Status = 40
DECLARE @ResourceID Uuid -- Guid
SET     @ResourceID = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @ModifiedTimeStamp Timestamp -- DateTime2
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
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Status",
	m_1."ResourceLabel",
	d."Id",
	d."Status",
	d."ResourceID",
	d."ModifiedTimeStamp"
FROM
	(
		SELECT DISTINCT
			t1."Status",
			t1."ResourceLabel"
		FROM
			(
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
					COUNT(*) > 1
			) t1
	) m_1
		INNER JOIN "InventoryResourceDTO" d
			INNER JOIN "WmsLoadCarrierDTO" lc_1 ON d."ResourceID" = lc_1."Id"
		ON m_1."Status" = d."Status" AND (m_1."ResourceLabel" = lc_1."ResourceLabel" OR m_1."ResourceLabel" IS NULL AND lc_1."ResourceLabel" IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	grp."Status",
	lc."ResourceLabel"
FROM
	"InventoryResourceDTO" grp
		INNER JOIN "WmsLoadCarrierDTO" lc ON grp."ResourceID" = lc."Id"
GROUP BY
	grp."Status",
	lc."ResourceLabel"
HAVING
	COUNT(*) > 1

