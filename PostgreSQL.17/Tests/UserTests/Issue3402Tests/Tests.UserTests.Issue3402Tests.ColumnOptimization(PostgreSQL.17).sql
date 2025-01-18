BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	ess."ID"
FROM
	"VEMPLOYEE_SCH_SEC" ess
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"VEMPLOYEE_SCHDL_PERM" y
		WHERE
			ess."ID" = y."ID" AND y."IS_ACTIVE"
	)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	ess."ID"
FROM
	"VEMPLOYEE_SCH_SEC" ess

