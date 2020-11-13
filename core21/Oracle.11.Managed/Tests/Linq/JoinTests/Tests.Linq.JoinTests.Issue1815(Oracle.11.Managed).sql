BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "StLink"
(
	"InId"          Int   NOT NULL,
	"InMaxQuantity" Float     NULL,
	"InMinQuantity" Float     NULL,

	CONSTRAINT "PK_StLink" PRIMARY KEY ("InId")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "StLink" ("InId", "InMaxQuantity", "InMinQuantity") VALUES (1,2D,1D)
	INTO "StLink" ("InId", "InMaxQuantity", "InMinQuantity") VALUES (2,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "EdtLink"
(
	"InId"          Int   NOT NULL,
	"InMaxQuantity" Float     NULL,
	"InMinQuantity" Float     NULL,

	CONSTRAINT "PK_EdtLink" PRIMARY KEY ("InId")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "EdtLink" ("InId", "InMaxQuantity", "InMinQuantity") VALUES (2,4D,3D)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	x."InId",
	j."InId",
	j."InMaxQuantity",
	j."InMinQuantity",
	x."InMinQuantity",
	x."InMaxQuantity"
FROM
	"StLink" x
		LEFT JOIN "EdtLink" j ON x."InId" = j."InId"
WHERE
	x."InId" = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	x."InId",
	j."InId",
	j."InMaxQuantity",
	j."InMinQuantity",
	x."InMinQuantity",
	x."InMaxQuantity"
FROM
	"StLink" x
		LEFT JOIN "EdtLink" j ON x."InId" = j."InId"
WHERE
	x."InId" = 2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "EdtLink"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "StLink"

