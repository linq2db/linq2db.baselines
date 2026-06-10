-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Guid Uuid -- Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @Sold Integer -- Int32
SET     @Sold = 100

INSERT INTO "Campaign"
(
	"Guid",
	"Sold"
)
VALUES
(
	:Guid,
	:Sold
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Guid Uuid -- Guid
SET     @Guid = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid
DECLARE @Sold Integer -- Int32
SET     @Sold = 40

INSERT INTO "Campaign"
(
	"Guid",
	"Sold"
)
VALUES
(
	:Guid,
	:Sold
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Guid Uuid -- Guid
SET     @Guid = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid
DECLARE @Sold Integer -- Int32
SET     @Sold = 200

INSERT INTO "Campaign"
(
	"Guid",
	"Sold"
)
VALUES
(
	:Guid,
	:Sold
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Guid",
	lc."Count",
	CASE
		WHEN lc."Count" IS NOT NULL THEN (lc."Count"::decimal / r."Sold") * 100
		ELSE NULL
	END
FROM
	"Campaign" r
		LEFT JOIN (VALUES
			('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid,5),
			('a948600d-de21-4f74-8ac2-9516b287076e'::uuid,10)
		) lc("Key", "Count") ON r."Guid" = lc."Key"

