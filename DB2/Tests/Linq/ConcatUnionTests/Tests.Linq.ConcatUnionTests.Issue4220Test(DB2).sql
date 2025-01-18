BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @AOnly VarChar(6) -- String
SET     @AOnly = 'a only'

INSERT INTO "ConcreteA"
(
	"Id",
	"AOnly"
)
VALUES
(
	@Id,
	@AOnly
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @BOnly VarChar(6) -- String
SET     @BOnly = 'b only'

INSERT INTO "ConcreteB"
(
	"Id",
	"BOnly"
)
VALUES
(
	@Id,
	@BOnly
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id",
	"e"."AOnly",
	CAST(NULL AS Int),
	CAST(NULL AS NVarChar(255))
FROM
	"ConcreteA" "e"
UNION ALL
SELECT
	CAST(NULL AS Int),
	CAST(NULL AS NVarChar(255)),
	"e_1"."Id",
	"e_1"."BOnly"
FROM
	"ConcreteB" "e_1"

