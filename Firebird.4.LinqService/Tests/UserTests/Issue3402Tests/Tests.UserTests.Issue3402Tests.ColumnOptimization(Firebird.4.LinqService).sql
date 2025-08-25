BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"ess".ID
FROM
	VEMPLOYEE_SCH_SEC "ess"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			VEMPLOYEE_SCHDL_PERM "y"
		WHERE
			"ess".ID = "y".ID AND "y".IS_ACTIVE
	)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"ess".ID
FROM
	VEMPLOYEE_SCH_SEC "ess"

