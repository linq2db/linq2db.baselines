BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Position"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Position"
(
	"Group" Int NOT NULL,
	"Order" Int NOT NULL,
	"Id"    Int     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(7,10,5),
(7,20,6),
(7,30,NULL),
(7,40,NULL)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @group Integer -- Int32
SET     @group = 7

SELECT
	p_1."Id",
	LAG(p_1."Id", 1, -1) OVER(ORDER BY p_1."Order_1")
FROM
	(
		SELECT
			p."Id",
			p."Order" as "Order_1"
		FROM
			"Position" p
		WHERE
			p."Group" = :group
	) p_1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Position"

