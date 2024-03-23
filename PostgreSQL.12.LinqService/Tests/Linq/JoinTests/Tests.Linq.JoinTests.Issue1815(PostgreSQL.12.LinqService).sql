BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "StLink"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "StLink"
(
	"InId"          Int   NOT NULL,
	"InMaxQuantity" Float     NULL,
	"InMinQuantity" Float     NULL,

	CONSTRAINT "PK_StLink" PRIMARY KEY ("InId")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @InId Integer -- Int32
SET     @InId = 1
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = 2
DECLARE @InMinQuantity Double
SET     @InMinQuantity = 1

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	:InId,
	:InMaxQuantity,
	:InMinQuantity
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @InId Integer -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = NULL
DECLARE @InMinQuantity Double
SET     @InMinQuantity = NULL

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	:InId,
	:InMaxQuantity,
	:InMinQuantity
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EdtLink"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "EdtLink"
(
	"InId"          Int   NOT NULL,
	"InMaxQuantity" Float     NULL,
	"InMinQuantity" Float     NULL,

	CONSTRAINT "PK_EdtLink" PRIMARY KEY ("InId")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @InId Integer -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = 4
DECLARE @InMinQuantity Double
SET     @InMinQuantity = 3

INSERT INTO "EdtLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	:InId,
	:InMaxQuantity,
	:InMinQuantity
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."InId",
	e."InId",
	t1."InMinQuantity",
	e."InMinQuantity",
	t1."InMaxQuantity",
	e."InMaxQuantity"
FROM
	"StLink" t1
		LEFT JOIN "EdtLink" e ON t1."InId" = e."InId"
WHERE
	t1."InId" = 1
LIMIT 2

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."InId",
	e."InId",
	t1."InMinQuantity",
	e."InMinQuantity",
	t1."InMaxQuantity",
	e."InMaxQuantity"
FROM
	"StLink" t1
		LEFT JOIN "EdtLink" e ON t1."InId" = e."InId"
WHERE
	t1."InId" = 2
LIMIT 2

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EdtLink"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "StLink"

