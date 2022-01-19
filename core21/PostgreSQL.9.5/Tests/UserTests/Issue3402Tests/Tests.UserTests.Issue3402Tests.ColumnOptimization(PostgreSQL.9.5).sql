BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "VEMPLOYEE_SCH_SEC"
(
	"ACTIVE" Boolean NOT NULL,
	"ID"     Int     NOT NULL,
	"NAME"   text    NOT NULL,

	CONSTRAINT "PK_VEMPLOYEE_SCH_SEC" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "VEMPLOYEE_SCHDL_PERM"
(
	"ID"        Int     NOT NULL,
	"IS_ACTIVE" Boolean NOT NULL,

	CONSTRAINT "PK_VEMPLOYEE_SCHDL_PERM" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"VEMPLOYEE_SCHDL_PERM" y
					WHERE
						ess."ID" = y."ID" AND y."IS_ACTIVE" = True
				)
					THEN True
				ELSE False
			END as "allowEdit",
			ess."ID"
		FROM
			"VEMPLOYEE_SCH_SEC" ess
	) t1
WHERE
	t1."allowEdit" = True AND t1."allowEdit" IS NOT NULL

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	(
		SELECT
			True as "allowEdit",
			ess."ID"
		FROM
			"VEMPLOYEE_SCH_SEC" ess
	) t1
WHERE
	t1."allowEdit" = True AND t1."allowEdit" IS NOT NULL

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "VEMPLOYEE_SCHDL_PERM"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "VEMPLOYEE_SCH_SEC"

