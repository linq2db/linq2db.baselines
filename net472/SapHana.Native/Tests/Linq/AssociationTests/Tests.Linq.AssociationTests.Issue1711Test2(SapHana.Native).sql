BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Entity1711"
(
	"Id" BigInt NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Relationship1711"
(
	"EntityId" BigInt  NOT NULL,
	"Deleted"  TinyInt NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t"."Id"
FROM
	"Entity1711" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Relationship1711" "r"
		WHERE
			"r"."Deleted" = 0 AND "r"."EntityId" = "t"."Id"
	)

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Relationship1711"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Entity1711"

