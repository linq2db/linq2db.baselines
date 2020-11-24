BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "AttributeBase"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_AttributeBase" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "AttributeBase"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "AttributeBase"

