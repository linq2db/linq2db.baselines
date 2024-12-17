BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4458Item"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4458Item"
(
	"Id" text NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
('1'),
('2'),
('3')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "WarehouseStock"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "WarehouseStock"
(
	"ItemId"            text NOT NULL,
	"QuantityAvailable" Int  NOT NULL,
	"WarehouseId"       text NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "WarehouseStock"
(
	"ItemId",
	"QuantityAvailable",
	"WarehouseId"
)
VALUES
('1',10,'A')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Review"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Review"
(
	"ItemId" text NOT NULL,
	"UserId" text NOT NULL,
	"Score"  Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
('1','1',100),
('1','2',90),
('2','1',89),
('2','4',93),
('3','5',91)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."ItemId",
	d."UserId",
	d."Score"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Issue4458Item" t1
		WHERE
			 EXISTS (
				SELECT
					*
				FROM
					"Review" r
				WHERE
					r."ItemId" = t1."Id" AND r."Score" > 95
			)
	) m_1
		INNER JOIN "Review" d ON d."ItemId" = m_1."Id"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	i."Id",
	(
		SELECT
			SUM(s."QuantityAvailable")
		FROM
			"WarehouseStock" s
		WHERE
			s."ItemId" = i."Id" AND (
				SELECT
					stock."ItemId"
				FROM
					"WarehouseStock" stock
				WHERE
					stock."ItemId" = i."Id"
				GROUP BY
					stock."ItemId"
			) = s."ItemId"
	)
FROM
	"Issue4458Item" i
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"Review" r
		WHERE
			r."ItemId" = i."Id" AND r."Score" > 95
	)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Review"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "WarehouseStock"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4458Item"

