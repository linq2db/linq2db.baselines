BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "TableA"
(
	"Id"    Raw(16)      NOT NULL,
	"NameA" VarChar(255) NOT NULL,

	CONSTRAINT "PK_TableA" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "TableB"
(
	"Id"    Raw(16)      NOT NULL,
	"NameB" VarChar(255) NOT NULL,

	CONSTRAINT "PK_TableB" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	a."Id",
	b."Id"
FROM
	"TableA" a
		INNER JOIN "TableB" b ON a."Id" = b."Id"
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "TableB"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "TableA"

