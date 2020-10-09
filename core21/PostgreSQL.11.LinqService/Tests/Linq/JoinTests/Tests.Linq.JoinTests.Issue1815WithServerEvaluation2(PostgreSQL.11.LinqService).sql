BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "StLink"
(
	"InId"          Int   NOT NULL,
	"InMaxQuantity" Float     NULL,
	"InMinQuantity" Float     NULL,

	CONSTRAINT "PK_StLink" PRIMARY KEY ("InId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(1,2,1),
(2,NULL,NULL)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "EdtLink"
(
	"InId"          Int   NOT NULL,
	"InMaxQuantity" Float     NULL,
	"InMinQuantity" Float     NULL,

	CONSTRAINT "PK_EdtLink" PRIMARY KEY ("InId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO "EdtLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(2,4,3)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	x."InId", 
	CASE
		WHEN j."InId" IS NULL THEN x."InMinQuantity"
		ELSE j."InMinQuantity"
	END, 
	CASE
		WHEN j."InId" IS NULL THEN x."InMaxQuantity"
		ELSE j."InMaxQuantity"
	END
FROM
	"StLink" x
		LEFT JOIN "EdtLink" j ON x."InId" = j."InId"
WHERE
	x."InId" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	x."InId", 
	CASE
		WHEN j."InId" IS NULL THEN x."InMinQuantity"
		ELSE j."InMinQuantity"
	END, 
	CASE
		WHEN j."InId" IS NULL THEN x."InMaxQuantity"
		ELSE j."InMaxQuantity"
	END
FROM
	"StLink" x
		LEFT JOIN "EdtLink" j ON x."InId" = j."InId"
WHERE
	x."InId" = 2
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "EdtLink"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "StLink"

