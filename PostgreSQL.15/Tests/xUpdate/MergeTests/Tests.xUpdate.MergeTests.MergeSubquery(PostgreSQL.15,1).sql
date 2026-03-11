-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "MergeTemp"
(
	"ID"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_MergeTemp" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO "MergeTemp"
(
	"ID",
	"Name"
)
VALUES
(1,'John')

-- PostgreSQL.15 PostgreSQL

INSERT INTO "MergeTemp" AS t1
(
	"ID",
	"Name"
)
VALUES
(
	(
		SELECT
			t."ID"
		FROM
			"MergeTemp" t
		WHERE
			t."Name" = 'John'
	),
	'John II'
)
ON CONFLICT ("ID") DO UPDATE SET
	"ID" = t1."ID",
	"Name" = t1."Name"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "MergeTemp"

