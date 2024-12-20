﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4458Item"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4458Item"
(
	"Id" text NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Text(1) -- String
SET     @Id = '1'

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Text(1) -- String
SET     @Id = '2'

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Text(1) -- String
SET     @Id = '3'

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WarehouseStock"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "WarehouseStock"
(
	"ItemId"            text NOT NULL,
	"QuantityAvailable" Int  NOT NULL,
	"WarehouseId"       text NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ItemId Text(1) -- String
SET     @ItemId = '1'
DECLARE @QuantityAvailable Integer -- Int32
SET     @QuantityAvailable = 10
DECLARE @WarehouseId Text(1) -- String
SET     @WarehouseId = 'A'

INSERT INTO "WarehouseStock"
(
	"ItemId",
	"QuantityAvailable",
	"WarehouseId"
)
VALUES
(
	:ItemId,
	:QuantityAvailable,
	:WarehouseId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Review"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Review"
(
	"ItemId" text NOT NULL,
	"UserId" text NOT NULL,
	"Score"  Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ItemId Text(1) -- String
SET     @ItemId = '1'
DECLARE @UserId Text(1) -- String
SET     @UserId = '1'
DECLARE @Score Integer -- Int32
SET     @Score = 100

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	:ItemId,
	:UserId,
	:Score
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ItemId Text(1) -- String
SET     @ItemId = '1'
DECLARE @UserId Text(1) -- String
SET     @UserId = '2'
DECLARE @Score Integer -- Int32
SET     @Score = 90

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	:ItemId,
	:UserId,
	:Score
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ItemId Text(1) -- String
SET     @ItemId = '2'
DECLARE @UserId Text(1) -- String
SET     @UserId = '1'
DECLARE @Score Integer -- Int32
SET     @Score = 89

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	:ItemId,
	:UserId,
	:Score
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ItemId Text(1) -- String
SET     @ItemId = '2'
DECLARE @UserId Text(1) -- String
SET     @UserId = '4'
DECLARE @Score Integer -- Int32
SET     @Score = 93

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	:ItemId,
	:UserId,
	:Score
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ItemId Text(1) -- String
SET     @ItemId = '3'
DECLARE @UserId Text(1) -- String
SET     @UserId = '5'
DECLARE @Score Integer -- Int32
SET     @Score = 91

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	:ItemId,
	:UserId,
	:Score
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
			EXISTS(
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
	EXISTS(
		SELECT
			*
		FROM
			"Review" r
		WHERE
			r."ItemId" = i."Id" AND r."Score" > 95
	)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Review"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WarehouseStock"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4458Item"

