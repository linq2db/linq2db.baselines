BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "TableA"
(
	"Id"    Raw(16)      NOT NULL,
	"NameA" VarChar(255) NOT NULL,

	CONSTRAINT "PK_TableA" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "TableB"
(
	"Id"    Raw(16)      NOT NULL,
	"NameB" VarChar(255) NOT NULL,

	CONSTRAINT "PK_TableB" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 10

SELECT
	a."Id",
	b."Id"
FROM
	"TableA" a
		INNER JOIN "TableB" b ON a."Id" = b."Id"
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "TableB"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "TableA"

