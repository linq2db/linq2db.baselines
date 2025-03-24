BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

INSERT FIRST
WHEN 1 = 1 THEN
	INTO "Dest2"
	(
		ID,
		"Int"
	)
	VALUES
	(
		"source_A",
		"source_B"
	)
SELECT
	s.ID as "source_A",
	(
		SELECT
			x.ID
		FROM
			"Dest2" x
		WHERE
			x.ID > 5 AND ROWNUM <= 1
	) as "source_B"
FROM
	"TestSource" s

