BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "AttributeBase"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_AttributeBase" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12

DROP TABLE "AttributeBase"

