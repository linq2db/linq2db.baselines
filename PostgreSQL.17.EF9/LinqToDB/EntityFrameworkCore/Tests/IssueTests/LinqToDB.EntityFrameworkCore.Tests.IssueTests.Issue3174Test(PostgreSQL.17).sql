--  PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	p."Id"
FROM
	"ShadowTable" p
WHERE
	p."IsDeleted" = False
ORDER BY
	p."Id"
LIMIT :take OFFSET :skip 



--  PostgreSQL.9.3 PostgreSQL (asynchronously)

CREATE TEMPORARY TABLE "ShadowTable"
(
	"Id" integer NOT NULL,

	CONSTRAINT "PK_ShadowTable" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS



--  PostgreSQL.9.3 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "ShadowTable"



