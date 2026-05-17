-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @AOnly Varchar2(6) -- String
SET     @AOnly = 'a only'

INSERT INTO "ConcreteA"
(
	"Id",
	"AOnly"
)
VALUES
(
	:Id,
	:AOnly
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @BOnly Varchar2(6) -- String
SET     @BOnly = 'b only'

INSERT INTO "ConcreteB"
(
	"Id",
	"BOnly"
)
VALUES
(
	:Id,
	:BOnly
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."AOnly",
	NULL,
	NULL
FROM
	"ConcreteA" e
UNION ALL
SELECT
	NULL,
	NULL,
	e_1."Id",
	e_1."BOnly"
FROM
	"ConcreteB" e_1

